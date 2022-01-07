
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ entry_point; scalar_t__ deprecated_entry_file_lowpc; void* deprecated_entry_file_highpc; } ;
struct objfile {TYPE_1__ ei; int section_offsets; int * obfd; } ;
struct minimal_symbol {int dummy; } ;
struct cleanup {int dummy; } ;
typedef int bfd ;
typedef int asection ;
struct TYPE_6__ {int (* read_debug_info ) (int *,int *,int *) ;} ;
struct TYPE_8__ {TYPE_2__ debug_swap; } ;
struct TYPE_7__ {int debug_info; } ;


 scalar_t__ DEPRECATED_SYMBOL_NAME (struct minimal_symbol*) ;
 scalar_t__ INVALID_ENTRY_LOWPC ;
 scalar_t__ INVALID_ENTRY_POINT ;
 void* SYMBOL_VALUE_ADDRESS (struct minimal_symbol*) ;
 int bfd_errmsg (int ) ;
 int bfd_get_error () ;
 int do_cleanups (struct cleanup*) ;
 TYPE_4__* ecoff_backend (int *) ;
 TYPE_3__* ecoff_data (int *) ;
 int error (char*,int ) ;
 int init_minimal_symbol_collection () ;
 int install_minimal_symbols (struct objfile*) ;
 struct minimal_symbol* lookup_minimal_symbol_by_pc (scalar_t__) ;
 struct cleanup* make_cleanup_discard_minimal_symbols () ;
 int mdebug_build_psymtabs (struct objfile*,TYPE_2__*,int *) ;
 int read_alphacoff_dynamic_symtab (int ,struct objfile*) ;
 int stub1 (int *,int *,int *) ;

__attribute__((used)) static void
mipscoff_symfile_read (struct objfile *objfile, int mainline)
{
  bfd *abfd = objfile->obfd;
  struct cleanup *back_to;

  init_minimal_symbol_collection ();
  back_to = make_cleanup_discard_minimal_symbols ();




  if (!((*ecoff_backend (abfd)->debug_swap.read_debug_info)
 (abfd, (asection *) ((void*)0), &ecoff_data (abfd)->debug_info)))
    error ("Error reading symbol table: %s", bfd_errmsg (bfd_get_error ()));

  mdebug_build_psymtabs (objfile, &ecoff_backend (abfd)->debug_swap,
    &ecoff_data (abfd)->debug_info);



  read_alphacoff_dynamic_symtab (objfile->section_offsets, objfile);




  install_minimal_symbols (objfile);





  if (mainline
      && objfile->ei.entry_point != INVALID_ENTRY_POINT
      && objfile->ei.deprecated_entry_file_lowpc == INVALID_ENTRY_LOWPC)
    {
      struct minimal_symbol *m;

      m = lookup_minimal_symbol_by_pc (objfile->ei.entry_point);
      if (m && DEPRECATED_SYMBOL_NAME (m + 1))
 {
   objfile->ei.deprecated_entry_file_lowpc = SYMBOL_VALUE_ADDRESS (m);
   objfile->ei.deprecated_entry_file_highpc = SYMBOL_VALUE_ADDRESS (m + 1);
 }
    }

  do_cleanups (back_to);
}
