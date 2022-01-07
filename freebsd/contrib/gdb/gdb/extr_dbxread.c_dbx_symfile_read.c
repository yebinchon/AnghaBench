
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ size; } ;
struct TYPE_3__ {scalar_t__ size; } ;
struct objfile {TYPE_2__ static_psymbols; TYPE_1__ global_psymbols; int name; int * obfd; } ;
struct cleanup {int dummy; } ;
typedef int bfd ;


 int DBX_SYMBOL_SIZE (struct objfile*) ;
 int DBX_SYMCOUNT (struct objfile*) ;
 int DBX_SYMTAB_OFFSET (struct objfile*) ;
 int HAS_RELOC ;
 int SEEK_SET ;
 int bfd_get_file_flags (int *) ;
 int bfd_get_target (int *) ;
 int bfd_seek (int *,int ,int ) ;
 int block_address_function_relative ;
 int do_cleanups (struct cleanup*) ;
 int free_pending_blocks () ;
 int init_minimal_symbol_collection () ;
 int init_psymbol_list (struct objfile*,int ) ;
 int install_minimal_symbols (struct objfile*) ;
 struct cleanup* make_cleanup (int ,int ) ;
 int make_cleanup_discard_minimal_symbols () ;
 int perror_with_name (int ) ;
 int read_dbx_dynamic_symtab (struct objfile*) ;
 int read_dbx_symtab (struct objfile*) ;
 int really_free_pendings ;
 scalar_t__ strncmp (int ,char*,int) ;
 int symbol_size ;
 int symbol_table_offset ;
 int symfile_relocatable ;

__attribute__((used)) static void
dbx_symfile_read (struct objfile *objfile, int mainline)
{
  bfd *sym_bfd;
  int val;
  struct cleanup *back_to;

  sym_bfd = objfile->obfd;





  symfile_relocatable = bfd_get_file_flags (sym_bfd) & HAS_RELOC;





  block_address_function_relative =
    ((0 == strncmp (bfd_get_target (sym_bfd), "elf", 3))
     || (0 == strncmp (bfd_get_target (sym_bfd), "som", 3))
     || (0 == strncmp (bfd_get_target (sym_bfd), "coff", 4))
     || (0 == strncmp (bfd_get_target (sym_bfd), "pe", 2))
     || (0 == strncmp (bfd_get_target (sym_bfd), "epoc-pe", 7))
     || (0 == strncmp (bfd_get_target (sym_bfd), "nlm", 3)));

  val = bfd_seek (sym_bfd, DBX_SYMTAB_OFFSET (objfile), SEEK_SET);
  if (val < 0)
    perror_with_name (objfile->name);


  if (mainline
      || (objfile->global_psymbols.size == 0
   && objfile->static_psymbols.size == 0))
    init_psymbol_list (objfile, DBX_SYMCOUNT (objfile));

  symbol_size = DBX_SYMBOL_SIZE (objfile);
  symbol_table_offset = DBX_SYMTAB_OFFSET (objfile);

  free_pending_blocks ();
  back_to = make_cleanup (really_free_pendings, 0);

  init_minimal_symbol_collection ();
  make_cleanup_discard_minimal_symbols ();



  read_dbx_symtab (objfile);



  read_dbx_dynamic_symtab (objfile);




  install_minimal_symbols (objfile);

  do_cleanups (back_to);
}
