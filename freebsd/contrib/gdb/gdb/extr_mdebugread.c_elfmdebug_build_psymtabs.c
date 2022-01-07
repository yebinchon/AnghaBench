
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct objfile {int objfile_obstack; int * obfd; } ;
struct ecoff_debug_swap {int (* read_debug_info ) (int *,int *,struct ecoff_debug_info*) ;} ;
struct ecoff_debug_info {int dummy; } ;
struct cleanup {int dummy; } ;
typedef int bfd ;
typedef int asection ;


 int bfd_errmsg (int ) ;
 int bfd_get_error () ;
 int do_cleanups (struct cleanup*) ;
 int error (char*,int ) ;
 int init_minimal_symbol_collection () ;
 int install_minimal_symbols (struct objfile*) ;
 struct cleanup* make_cleanup_discard_minimal_symbols () ;
 int mdebug_build_psymtabs (struct objfile*,struct ecoff_debug_swap const*,struct ecoff_debug_info*) ;
 scalar_t__ obstack_alloc (int *,int) ;
 int stub1 (int *,int *,struct ecoff_debug_info*) ;

void
elfmdebug_build_psymtabs (struct objfile *objfile,
     const struct ecoff_debug_swap *swap, asection *sec)
{
  bfd *abfd = objfile->obfd;
  struct ecoff_debug_info *info;
  struct cleanup *back_to;





  init_minimal_symbol_collection ();
  back_to = make_cleanup_discard_minimal_symbols ();

  info = ((struct ecoff_debug_info *)
   obstack_alloc (&objfile->objfile_obstack,
    sizeof (struct ecoff_debug_info)));

  if (!(*swap->read_debug_info) (abfd, sec, info))
    error ("Error reading ECOFF debugging information: %s",
    bfd_errmsg (bfd_get_error ()));

  mdebug_build_psymtabs (objfile, swap, info);

  install_minimal_symbols (objfile);
  do_cleanups (back_to);
}
