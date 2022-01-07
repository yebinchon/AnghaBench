
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct objfile {int dummy; } ;
struct cleanup {int dummy; } ;
typedef enum minimal_symbol_type { ____Placeholder_minimal_symbol_type } minimal_symbol_type ;
typedef int bfd ;
struct TYPE_5__ {int name; TYPE_4__* section; scalar_t__ value; } ;
typedef TYPE_1__ asymbol ;
struct TYPE_6__ {int flags; scalar_t__ vma; } ;
typedef scalar_t__ CORE_ADDR ;


 int SEC_CODE ;
 int SEC_DATA ;
 TYPE_4__ bfd_abs_section ;
 long bfd_canonicalize_symtab (int *,TYPE_1__**) ;
 char* bfd_errmsg (int ) ;
 int bfd_get_error () ;
 int bfd_get_filename (int *) ;
 long bfd_get_symtab_upper_bound (int *) ;
 int do_cleanups (struct cleanup*) ;
 int error (char*,int ,char*) ;
 struct cleanup* make_cleanup (int ,TYPE_1__**) ;
 int mst_data ;
 int mst_text ;
 int mst_unknown ;
 int prim_record_minimal_symbol (int ,scalar_t__,int,struct objfile*) ;
 int xfree ;
 scalar_t__ xmalloc (long) ;

__attribute__((used)) static void
nlm_symtab_read (bfd *abfd, CORE_ADDR addr, struct objfile *objfile)
{
  long storage_needed;
  asymbol *sym;
  asymbol **symbol_table;
  long number_of_symbols;
  long i;
  struct cleanup *back_to;
  CORE_ADDR symaddr;
  enum minimal_symbol_type ms_type;

  storage_needed = bfd_get_symtab_upper_bound (abfd);
  if (storage_needed < 0)
    error ("Can't read symbols from %s: %s", bfd_get_filename (abfd),
    bfd_errmsg (bfd_get_error ()));
  if (storage_needed > 0)
    {
      symbol_table = (asymbol **) xmalloc (storage_needed);
      back_to = make_cleanup (xfree, symbol_table);
      number_of_symbols = bfd_canonicalize_symtab (abfd, symbol_table);
      if (number_of_symbols < 0)
 error ("Can't read symbols from %s: %s", bfd_get_filename (abfd),
        bfd_errmsg (bfd_get_error ()));

      for (i = 0; i < number_of_symbols; i++)
 {
   sym = symbol_table[i];
   if ( 1)
     {

       symaddr = sym->value + sym->section->vma;

       if (sym->section != &bfd_abs_section)
  symaddr += addr;




       if (sym->section->flags & SEC_CODE)
  ms_type = mst_text;
       else if (sym->section->flags & SEC_DATA)
  ms_type = mst_data;
       else
  ms_type = mst_unknown;

       prim_record_minimal_symbol (sym->name, symaddr, ms_type,
       objfile);
     }
 }
      do_cleanups (back_to);
    }
}
