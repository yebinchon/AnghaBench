
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_29__ TYPE_6__ ;
typedef struct TYPE_28__ TYPE_5__ ;
typedef struct TYPE_27__ TYPE_4__ ;
typedef struct TYPE_26__ TYPE_3__ ;
typedef struct TYPE_25__ TYPE_2__ ;
typedef struct TYPE_24__ TYPE_1__ ;


typedef int tdata_t ;
struct TYPE_24__ {int ii_flags; } ;
typedef TYPE_1__ iidesc_t ;
struct TYPE_25__ {int iim_fuzzy; char* iim_file; char* iim_name; void* iim_bind; } ;
typedef TYPE_2__ iidesc_match_t ;
struct TYPE_26__ {int iib_nobjts; int iib_nfuncs; int iib_maxtypeid; TYPE_1__** iib_funcs; TYPE_1__** iib_objts; } ;
typedef TYPE_3__ iiburst_t ;
struct TYPE_29__ {scalar_t__ d_buf; } ;
struct TYPE_28__ {int sh_size; int sh_entsize; int sh_link; } ;
struct TYPE_27__ {int st_name; int st_info; } ;
typedef TYPE_4__ GElf_Sym ;
typedef TYPE_5__ GElf_Shdr ;
typedef int Elf_Scn ;
typedef TYPE_6__ Elf_Data ;
typedef int Elf ;


 void* GELF_ST_BIND (int ) ;
 int GELF_ST_TYPE (int ) ;
 int IIDESC_F_USED ;



 int check_for_weak (TYPE_4__*,char*,TYPE_6__*,int,TYPE_6__*,TYPE_4__*,char**) ;
 TYPE_1__* copy_from_strong (int *,TYPE_4__*,TYPE_1__*,char*,char*) ;
 int debug (int,char*,char*,char*) ;
 TYPE_6__* elf_getdata (int *,int *) ;
 int * elf_getscn (int *,int) ;
 int elfterminate (char const*,char*,int) ;
 TYPE_1__* find_iidesc (int *,TYPE_2__*) ;
 int findelfsecidx (int *,char const*,char*) ;
 int gelf_getshdr (int *,TYPE_5__*) ;
 int * gelf_getsym (TYPE_6__*,int,TYPE_4__*) ;
 scalar_t__ ignore_symbol (TYPE_4__*,char*) ;
 TYPE_3__* iiburst_new (int *,int) ;
 int iiburst_types (TYPE_3__*) ;
 char* strrchr (char*,char) ;
 int tdata_label_newmax (int *,int ) ;
 int terminate (char*,char const*) ;

__attribute__((used)) static iiburst_t *
sort_iidescs(Elf *elf, const char *file, tdata_t *td, int fuzzymatch,
    int dynsym)
{
 iiburst_t *iiburst;
 Elf_Scn *scn;
 GElf_Shdr shdr;
 Elf_Data *data, *strdata;
 int i, stidx;
 int nent;
 iidesc_match_t match;

 match.iim_fuzzy = fuzzymatch;
 match.iim_file = ((void*)0);

 if ((stidx = findelfsecidx(elf, file,
     dynsym ? ".dynsym" : ".symtab")) < 0)
  terminate("%s: Can't open symbol table\n", file);
 scn = elf_getscn(elf, stidx);
 data = elf_getdata(scn, ((void*)0));
 gelf_getshdr(scn, &shdr);
 nent = shdr.sh_size / shdr.sh_entsize;

 scn = elf_getscn(elf, shdr.sh_link);
 strdata = elf_getdata(scn, ((void*)0));

 iiburst = iiburst_new(td, nent);

 for (i = 0; i < nent; i++) {
  GElf_Sym sym;
  char *bname;
  iidesc_t **tolist;
  GElf_Sym ssym;
  iidesc_match_t smatch;
  int *curr;
  iidesc_t *iidesc;

  if (gelf_getsym(data, i, &sym) == ((void*)0))
   elfterminate(file, "Couldn't read symbol %d", i);

  match.iim_name = (char *)strdata->d_buf + sym.st_name;
  match.iim_bind = GELF_ST_BIND(sym.st_info);

  switch (GELF_ST_TYPE(sym.st_info)) {
  case 130:
   bname = strrchr(match.iim_name, '/');
   match.iim_file = bname == ((void*)0) ? match.iim_name : bname + 1;
   continue;
  case 128:
   tolist = iiburst->iib_objts;
   curr = &iiburst->iib_nobjts;
   break;
  case 129:
   tolist = iiburst->iib_funcs;
   curr = &iiburst->iib_nfuncs;
   break;
  default:
   continue;
  }

  if (ignore_symbol(&sym, match.iim_name))
   continue;

  iidesc = find_iidesc(td, &match);

  if (iidesc != ((void*)0)) {
   tolist[*curr] = iidesc;
   iidesc->ii_flags |= IIDESC_F_USED;
   (*curr)++;
   continue;
  }

  if (!check_for_weak(&sym, match.iim_file, data, nent, strdata,
      &ssym, &smatch.iim_file)) {
   (*curr)++;
   continue;
  }

  smatch.iim_fuzzy = fuzzymatch;
  smatch.iim_name = (char *)strdata->d_buf + ssym.st_name;
  smatch.iim_bind = GELF_ST_BIND(ssym.st_info);

  debug(3, "Weak symbol %s resolved to %s\n", match.iim_name,
      smatch.iim_name);

  iidesc = find_iidesc(td, &smatch);

  if (iidesc != ((void*)0)) {
   tolist[*curr] = copy_from_strong(td, &sym,
       iidesc, match.iim_name, match.iim_file);
   tolist[*curr]->ii_flags |= IIDESC_F_USED;
  }

  (*curr)++;
 }
 iiburst_types(iiburst);
 tdata_label_newmax(td, iiburst->iib_maxtypeid);

 return (iiburst);
}
