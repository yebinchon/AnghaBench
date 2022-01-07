
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_4__ ;
typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;


typedef size_t off_t ;
typedef TYPE_1__* caddr_t ;
struct TYPE_25__ {int e_phnum; int e_shnum; int e_shstrndx; size_t e_shoff; scalar_t__ e_phoff; } ;
struct TYPE_24__ {size_t sh_name; scalar_t__ sh_type; size_t sh_addralign; size_t sh_offset; int sh_link; int sh_info; char sh_size; int sh_entsize; } ;
struct TYPE_23__ {size_t st_shndx; } ;
struct TYPE_22__ {int d_align; char d_size; scalar_t__ d_off; struct TYPE_22__* d_buf; int d_version; int d_type; } ;
typedef scalar_t__ GElf_Word ;
typedef TYPE_2__ GElf_Sym ;
typedef TYPE_3__ GElf_Shdr ;
typedef int GElf_Phdr ;
typedef TYPE_4__ GElf_Ehdr ;
typedef int Elf_Scn ;
typedef TYPE_1__ Elf_Data ;
typedef int Elf ;


 char* CTF_ELF_SCN_NAME ;
 int CTF_KEEP_STABS ;
 int CTF_USE_DYNSYM ;
 int ELF_C_SET ;
 int ELF_C_WRITE ;
 int ELF_F_LAYOUT ;
 int ELF_T_ADDR ;
 int EV_CURRENT ;
 size_t SHN_LORESERVE ;
 scalar_t__ SHT_DYNSYM ;
 scalar_t__ SHT_NOBITS ;
 scalar_t__ SHT_PROGBITS ;
 scalar_t__ SHT_REL ;
 scalar_t__ SHT_RELA ;
 scalar_t__ SHT_SYMTAB ;
 int bcopy (TYPE_1__*,TYPE_1__*,int) ;
 int elf_flagelf (int *,int ,int ) ;
 TYPE_1__* elf_getdata (int *,int *) ;
 int * elf_getscn (int *,int) ;
 TYPE_1__* elf_newdata (int *) ;
 int * elf_newscn (int *) ;
 char* elf_strptr (int *,int,size_t) ;
 scalar_t__ elf_update (int *,int ) ;
 int elfterminate (char const*,char*,...) ;
 int free (int*) ;
 size_t gelf_fsize (int *,int ,int,int ) ;
 int gelf_getclass (int *) ;
 int gelf_getehdr (int *,TYPE_4__*) ;
 int gelf_getphdr (int *,int,int *) ;
 int gelf_getshdr (int *,TYPE_3__*) ;
 int * gelf_getsym (TYPE_1__*,int,TYPE_2__*) ;
 int * gelf_newehdr (int *,int ) ;
 int * gelf_newphdr (int *,int) ;
 int gelf_update_ehdr (int *,TYPE_4__*) ;
 int gelf_update_phdr (int *,int,int *) ;
 scalar_t__ gelf_update_shdr (int *,TYPE_3__*) ;
 int gelf_update_sym (TYPE_1__*,int,TYPE_2__*) ;
 int memcpy (TYPE_4__*,TYPE_4__*,int) ;
 int printf (char*,int) ;
 scalar_t__ strcmp (char*,char*) ;
 int strcpy (TYPE_1__*,char*) ;
 char strlen (char*) ;
 scalar_t__ strncmp (char*,char*,int) ;
 int terminate (char*,char const*,char*) ;
 void* xmalloc (char) ;

__attribute__((used)) static void
write_file(Elf *src, const char *srcname, Elf *dst, const char *dstname,
    caddr_t ctfdata, size_t ctfsize, int flags)
{
 GElf_Ehdr sehdr, dehdr;
 Elf_Scn *sscn, *dscn;
 Elf_Data *sdata, *ddata;
 GElf_Shdr shdr;
 GElf_Word symtab_type;
 int symtab_idx = -1;
 off_t new_offset = 0;
 off_t ctfnameoff = 0;
 int dynsym = (flags & CTF_USE_DYNSYM);
 int keep_stabs = (flags & CTF_KEEP_STABS);
 int *secxlate;
 int srcidx, dstidx;
 int curnmoff = 0;
 int changing = 0;
 int pad;
 int i;

 if (gelf_newehdr(dst, gelf_getclass(src)) == ((void*)0))
  elfterminate(dstname, "Cannot copy ehdr to temp file");
 gelf_getehdr(src, &sehdr);
 memcpy(&dehdr, &sehdr, sizeof (GElf_Ehdr));
 gelf_update_ehdr(dst, &dehdr);

 symtab_type = dynsym ? SHT_DYNSYM : SHT_SYMTAB;







 if (sehdr.e_phnum != 0) {
  (void) elf_flagelf(dst, ELF_C_SET, ELF_F_LAYOUT);
  if (gelf_newphdr(dst, sehdr.e_phnum) == ((void*)0))
   elfterminate(dstname, "Cannot make phdrs in temp file");

  for (i = 0; i < sehdr.e_phnum; i++) {
   GElf_Phdr phdr;

   gelf_getphdr(src, i, &phdr);
   gelf_update_phdr(dst, i, &phdr);
  }
 }

 secxlate = xmalloc(sizeof (int) * sehdr.e_shnum);
 for (srcidx = dstidx = 0; srcidx < sehdr.e_shnum; srcidx++) {
  Elf_Scn *scn = elf_getscn(src, srcidx);
  GElf_Shdr shdr1;
  char *sname;

  gelf_getshdr(scn, &shdr1);
  sname = elf_strptr(src, sehdr.e_shstrndx, shdr1.sh_name);
  if (sname == ((void*)0)) {
   elfterminate(srcname, "Can't find string at %u",
       shdr1.sh_name);
  }

  if (strcmp(sname, CTF_ELF_SCN_NAME) == 0) {
   secxlate[srcidx] = -1;
  } else if (!keep_stabs &&
      (strncmp(sname, ".stab", 5) == 0 ||
      strncmp(sname, ".debug", 6) == 0 ||
      strncmp(sname, ".rel.debug", 10) == 0 ||
      strncmp(sname, ".rela.debug", 11) == 0)) {
   secxlate[srcidx] = -1;
  } else if (dynsym && shdr1.sh_type == SHT_SYMTAB) {





   secxlate[srcidx] = -1;
  } else {
   secxlate[srcidx] = dstidx++;
   curnmoff += strlen(sname) + 1;
  }

  new_offset = (off_t)dehdr.e_phoff;
 }

 for (srcidx = 1; srcidx < sehdr.e_shnum; srcidx++) {
  char *sname;

  sscn = elf_getscn(src, srcidx);
  gelf_getshdr(sscn, &shdr);

  if (secxlate[srcidx] == -1) {
   changing = 1;
   continue;
  }

  dscn = elf_newscn(dst);
  if (changing && sehdr.e_phnum != 0) {
   pad = new_offset % shdr.sh_addralign;

   if (pad)
    new_offset += shdr.sh_addralign - pad;
   shdr.sh_offset = new_offset;
  }

  shdr.sh_link = secxlate[shdr.sh_link];

  if (shdr.sh_type == SHT_REL || shdr.sh_type == SHT_RELA)
   shdr.sh_info = secxlate[shdr.sh_info];

  sname = elf_strptr(src, sehdr.e_shstrndx, shdr.sh_name);
  if (sname == ((void*)0)) {
   elfterminate(srcname, "Can't find string at %u",
       shdr.sh_name);
  }


  if (gelf_update_shdr(dscn, &shdr) == 0)
   elfterminate(dstname, "Cannot update sect %s", sname);


  if ((sdata = elf_getdata(sscn, ((void*)0))) == ((void*)0))
   elfterminate(srcname, "Cannot get sect %s data", sname);
  if ((ddata = elf_newdata(dscn)) == ((void*)0))
   elfterminate(dstname, "Can't make sect %s data", sname);
  ddata->d_align = sdata->d_align;
  ddata->d_off = sdata->d_off;
  ddata->d_size = sdata->d_size;
  ddata->d_type = sdata->d_type;
  ddata->d_version = sdata->d_version;


  if (srcidx == sehdr.e_shstrndx) {
   char seclen = strlen(CTF_ELF_SCN_NAME);

   ddata->d_buf = xmalloc(ddata->d_size + shdr.sh_size +
       seclen + 1);
   bcopy(sdata->d_buf, ddata->d_buf, shdr.sh_size);
   strcpy((caddr_t)ddata->d_buf + shdr.sh_size,
       CTF_ELF_SCN_NAME);
   ctfnameoff = (off_t)shdr.sh_size;
   shdr.sh_size += seclen + 1;
   ddata->d_size += seclen + 1;

   if (sehdr.e_phnum != 0)
    changing = 1;
  }

  if (shdr.sh_type == symtab_type && shdr.sh_entsize != 0) {
   int nsym = shdr.sh_size / shdr.sh_entsize;

   symtab_idx = secxlate[srcidx];

   ddata->d_buf = xmalloc(shdr.sh_size);
   bcopy(sdata->d_buf, ddata->d_buf, shdr.sh_size);

   for (i = 0; i < nsym; i++) {
    GElf_Sym sym;
    short newscn;

    if (gelf_getsym(ddata, i, &sym) == ((void*)0))
     printf("Could not get symbol %d\n",i);

    if (sym.st_shndx >= SHN_LORESERVE)
     continue;

    if ((newscn = secxlate[sym.st_shndx]) !=
        sym.st_shndx) {
     sym.st_shndx =
         (newscn == -1 ? 1 : newscn);

     gelf_update_sym(ddata, i, &sym);
    }
   }
  }


  if (ddata->d_buf == ((void*)0) && sdata->d_buf != ((void*)0)) {
   ddata->d_buf = xmalloc(shdr.sh_size);
   bcopy(sdata->d_buf, ddata->d_buf, shdr.sh_size);
  }


  if (gelf_update_shdr(dscn, &shdr) == 0)
   elfterminate(dstname, "Cannot update sect %s", sname);

  new_offset = (off_t)shdr.sh_offset;
  if (shdr.sh_type != SHT_NOBITS)
   new_offset += shdr.sh_size;
 }

 if (symtab_idx == -1) {
  terminate("%s: Cannot find %s section\n", srcname,
      dynsym ? "SHT_DYNSYM" : "SHT_SYMTAB");
 }


 dscn = elf_newscn(dst);
 gelf_getshdr(dscn, &shdr);
 shdr.sh_name = ctfnameoff;
 shdr.sh_type = SHT_PROGBITS;
 shdr.sh_size = ctfsize;
 shdr.sh_link = symtab_idx;
 shdr.sh_addralign = 4;
 if (changing && sehdr.e_phnum != 0) {
  pad = new_offset % shdr.sh_addralign;

  if (pad)
   new_offset += shdr.sh_addralign - pad;

  shdr.sh_offset = new_offset;
  new_offset += shdr.sh_size;
 }

 ddata = elf_newdata(dscn);
 ddata->d_buf = ctfdata;
 ddata->d_size = ctfsize;
 ddata->d_align = shdr.sh_addralign;
 ddata->d_off = 0;

 gelf_update_shdr(dscn, &shdr);


 if (sehdr.e_phnum != 0) {
  size_t align = gelf_fsize(dst, ELF_T_ADDR, 1, EV_CURRENT);
  size_t r = new_offset % align;

  if (r)
   new_offset += align - r;

  dehdr.e_shoff = new_offset;
 }


 dehdr.e_shstrndx = secxlate[sehdr.e_shstrndx];
 gelf_update_ehdr(dst, &dehdr);
 if (elf_update(dst, ELF_C_WRITE) < 0)
  elfterminate(dstname, "Cannot finalize temp file");

 free(secxlate);
}
