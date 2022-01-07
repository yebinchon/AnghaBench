
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct section_offsets {int dummy; } ;
struct objfile {int * obfd; } ;
struct cleanup {int dummy; } ;
struct alphacoff_dynsecinfo {int * got_sect; int * dyninfo_sect; int * str_sect; int * sym_sect; } ;
typedef int si ;
typedef int file_ptr ;
typedef enum minimal_symbol_type { ____Placeholder_minimal_symbol_type } minimal_symbol_type ;
typedef scalar_t__ bfd_vma ;
typedef int bfd_size_type ;
typedef int bfd_byte ;
typedef int bfd ;
struct TYPE_4__ {scalar_t__ d_val; } ;
struct TYPE_6__ {TYPE_1__ d_un; scalar_t__ d_tag; } ;
struct TYPE_5__ {scalar_t__ st_shndx; scalar_t__ st_info; scalar_t__ st_value; scalar_t__ st_name; } ;
typedef TYPE_2__ Elfalpha_External_Sym ;
typedef TYPE_3__ Elfalpha_External_Dyn ;


 scalar_t__ ANOFFSET (struct section_offsets*,int ) ;
 long DT_MIPS_GOTSYM ;
 long DT_MIPS_LOCAL_GOTNO ;
 long DT_NULL ;
 scalar_t__ ELF_ST_BIND (unsigned char) ;
 scalar_t__ ELF_ST_TYPE (unsigned char) ;
 int SECT_OFF_BSS (struct objfile*) ;
 int SECT_OFF_DATA (struct objfile*) ;
 int SECT_OFF_TEXT (struct objfile*) ;
 unsigned int SHN_ABS ;
 unsigned int SHN_MIPS_ACOMMON ;
 unsigned int SHN_MIPS_DATA ;
 unsigned int SHN_MIPS_TEXT ;
 unsigned int SHN_UNDEF ;
 scalar_t__ STB_GLOBAL ;
 scalar_t__ STT_FUNC ;
 int alphacoff_locate_sections ;
 scalar_t__ bfd_arch_alpha ;
 scalar_t__ bfd_get_arch (int *) ;
 int bfd_get_section_contents (int *,int *,char*,int ,int) ;
 int bfd_get_section_size (int *) ;
 scalar_t__ bfd_get_symcount (int *) ;
 unsigned int bfd_h_get_16 (int *,int *) ;
 void* bfd_h_get_32 (int *,int *) ;
 scalar_t__ bfd_h_get_64 (int *,int *) ;
 unsigned char bfd_h_get_8 (int *,int *) ;
 int bfd_map_over_sections (int *,int ,void*) ;
 int do_cleanups (struct cleanup*) ;
 int free ;
 struct cleanup* make_cleanup (int ,char*) ;
 int memset (char*,int ,int) ;
 int mst_abs ;
 int mst_bss ;
 int mst_data ;
 int mst_file_bss ;
 int mst_file_data ;
 int mst_file_text ;
 int mst_solib_trampoline ;
 int mst_text ;
 int prim_record_minimal_symbol (char*,scalar_t__,int,struct objfile*) ;
 char* xmalloc (int) ;

__attribute__((used)) static void
read_alphacoff_dynamic_symtab (struct section_offsets *section_offsets,
          struct objfile *objfile)
{
  bfd *abfd = objfile->obfd;
  struct alphacoff_dynsecinfo si;
  char *sym_secptr;
  char *str_secptr;
  char *dyninfo_secptr;
  char *got_secptr;
  bfd_size_type sym_secsize;
  bfd_size_type str_secsize;
  bfd_size_type dyninfo_secsize;
  bfd_size_type got_secsize;
  int sym_count;
  int i;
  int stripped;
  Elfalpha_External_Sym *x_symp;
  char *dyninfo_p;
  char *dyninfo_end;
  int got_entry_size = 8;
  int dt_mips_local_gotno = -1;
  int dt_mips_gotsym = -1;
  struct cleanup *cleanups;



  if (bfd_get_arch (abfd) != bfd_arch_alpha)
    return;


  memset ((char *) &si, 0, sizeof (si));
  bfd_map_over_sections (abfd, alphacoff_locate_sections, (void *) & si);
  if (si.sym_sect == ((void*)0)
      || si.str_sect == ((void*)0)
      || si.dyninfo_sect == ((void*)0)
      || si.got_sect == ((void*)0))
    return;

  sym_secsize = bfd_get_section_size (si.sym_sect);
  str_secsize = bfd_get_section_size (si.str_sect);
  dyninfo_secsize = bfd_get_section_size (si.dyninfo_sect);
  got_secsize = bfd_get_section_size (si.got_sect);
  sym_secptr = xmalloc (sym_secsize);
  cleanups = make_cleanup (free, sym_secptr);
  str_secptr = xmalloc (str_secsize);
  make_cleanup (free, str_secptr);
  dyninfo_secptr = xmalloc (dyninfo_secsize);
  make_cleanup (free, dyninfo_secptr);
  got_secptr = xmalloc (got_secsize);
  make_cleanup (free, got_secptr);

  if (!bfd_get_section_contents (abfd, si.sym_sect, sym_secptr,
     (file_ptr) 0, sym_secsize))
    return;
  if (!bfd_get_section_contents (abfd, si.str_sect, str_secptr,
     (file_ptr) 0, str_secsize))
    return;
  if (!bfd_get_section_contents (abfd, si.dyninfo_sect, dyninfo_secptr,
     (file_ptr) 0, dyninfo_secsize))
    return;
  if (!bfd_get_section_contents (abfd, si.got_sect, got_secptr,
     (file_ptr) 0, got_secsize))
    return;



  for (dyninfo_p = dyninfo_secptr, dyninfo_end = dyninfo_p + dyninfo_secsize;
       dyninfo_p < dyninfo_end;
       dyninfo_p += sizeof (Elfalpha_External_Dyn))
    {
      Elfalpha_External_Dyn *x_dynp = (Elfalpha_External_Dyn *) dyninfo_p;
      long dyn_tag;

      dyn_tag = bfd_h_get_32 (abfd, (bfd_byte *) x_dynp->d_tag);
      if (dyn_tag == DT_NULL)
 break;
      else if (dyn_tag == DT_MIPS_LOCAL_GOTNO)
 {
   if (dt_mips_local_gotno < 0)
     dt_mips_local_gotno
       = bfd_h_get_32 (abfd, (bfd_byte *) x_dynp->d_un.d_val);
 }
      else if (dyn_tag == DT_MIPS_GOTSYM)
 {
   if (dt_mips_gotsym < 0)
     dt_mips_gotsym
       = bfd_h_get_32 (abfd, (bfd_byte *) x_dynp->d_un.d_val);
 }
    }
  if (dt_mips_local_gotno < 0 || dt_mips_gotsym < 0)
    return;



  sym_count = sym_secsize / sizeof (Elfalpha_External_Sym);
  stripped = (bfd_get_symcount (abfd) == 0);


  for (i = 1, x_symp = (Elfalpha_External_Sym *) sym_secptr + 1;
       i < sym_count;
       i++, x_symp++)
    {
      unsigned long strx;
      char *name;
      bfd_vma sym_value;
      unsigned char sym_info;
      unsigned int sym_shndx;
      int isglobal;
      enum minimal_symbol_type ms_type;

      strx = bfd_h_get_32 (abfd, (bfd_byte *) x_symp->st_name);
      if (strx >= str_secsize)
 continue;
      name = str_secptr + strx;
      if (*name == '\0' || *name == '.')
 continue;

      sym_value = bfd_h_get_64 (abfd, (bfd_byte *) x_symp->st_value);
      sym_info = bfd_h_get_8 (abfd, (bfd_byte *) x_symp->st_info);
      sym_shndx = bfd_h_get_16 (abfd, (bfd_byte *) x_symp->st_shndx);
      isglobal = (ELF_ST_BIND (sym_info) == STB_GLOBAL);

      if (sym_shndx == SHN_UNDEF)
 {


   if (ELF_ST_TYPE (sym_info) != STT_FUNC
       || ELF_ST_BIND (sym_info) != STB_GLOBAL)
     continue;

   ms_type = mst_solib_trampoline;
   if (sym_value == 0)
     {
       int got_entry_offset =
       (i - dt_mips_gotsym + dt_mips_local_gotno) * got_entry_size;

       if (got_entry_offset < 0 || got_entry_offset >= got_secsize)
  continue;
       sym_value =
  bfd_h_get_64 (abfd,
         (bfd_byte *) (got_secptr + got_entry_offset));
       if (sym_value == 0)
  continue;
     }
 }
      else
 {



   if (!stripped)
     continue;

   if (sym_shndx == SHN_MIPS_TEXT)
     {
       if (isglobal)
  ms_type = mst_text;
       else
  ms_type = mst_file_text;
       sym_value += ANOFFSET (section_offsets, SECT_OFF_TEXT (objfile));
     }
   else if (sym_shndx == SHN_MIPS_DATA)
     {
       if (isglobal)
  ms_type = mst_data;
       else
  ms_type = mst_file_data;
       sym_value += ANOFFSET (section_offsets, SECT_OFF_DATA (objfile));
     }
   else if (sym_shndx == SHN_MIPS_ACOMMON)
     {
       if (isglobal)
  ms_type = mst_bss;
       else
  ms_type = mst_file_bss;
       sym_value += ANOFFSET (section_offsets, SECT_OFF_BSS (objfile));
     }
   else if (sym_shndx == SHN_ABS)
     {
       ms_type = mst_abs;
     }
   else
     {
       continue;
     }
 }

      prim_record_minimal_symbol (name, sym_value, ms_type, objfile);
    }

  do_cleanups (cleanups);
}
