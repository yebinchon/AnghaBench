
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct lang_nocrossrefs {int dummy; } ;
struct check_refs_info {char const* sym_name; int ** asymbols; struct lang_nocrossrefs* ncrs; int * defsec; int global; } ;
struct TYPE_8__ {long symbol_count; int ** asymbols; } ;
typedef TYPE_1__ lang_input_statement_type ;
typedef int bfd_boolean ;
struct TYPE_9__ {TYPE_1__* usrdata; } ;
typedef TYPE_2__ bfd ;
typedef int asymbol ;
typedef int asection ;


 int _ (char*) ;
 long bfd_canonicalize_symtab (TYPE_2__*,int **) ;
 long bfd_get_symtab_upper_bound (TYPE_2__*) ;
 int bfd_map_over_sections (TYPE_2__*,int ,struct check_refs_info*) ;
 int check_reloc_refs ;
 int einfo (int ,TYPE_2__*) ;
 int free (int **) ;
 int ** xmalloc (long) ;

__attribute__((used)) static void
check_refs (const char *name,
     bfd_boolean global,
     asection *sec,
     bfd *abfd,
     struct lang_nocrossrefs *ncrs)
{
  lang_input_statement_type *li;
  asymbol **asymbols;
  struct check_refs_info info;







  li = abfd->usrdata;
  if (li != ((void*)0) && li->asymbols != ((void*)0))
    asymbols = li->asymbols;
  else
    {
      long symsize;
      long symbol_count;

      symsize = bfd_get_symtab_upper_bound (abfd);
      if (symsize < 0)
 einfo (_("%B%F: could not read symbols; %E\n"), abfd);
      asymbols = xmalloc (symsize);
      symbol_count = bfd_canonicalize_symtab (abfd, asymbols);
      if (symbol_count < 0)
 einfo (_("%B%F: could not read symbols: %E\n"), abfd);
      if (li != ((void*)0))
 {
   li->asymbols = asymbols;
   li->symbol_count = symbol_count;
 }
    }

  info.sym_name = name;
  info.global = global;
  info.defsec = sec;
  info.ncrs = ncrs;
  info.asymbols = asymbols;
  bfd_map_over_sections (abfd, check_reloc_refs, &info);

  if (li == ((void*)0))
    free (asymbols);
}
