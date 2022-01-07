
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct objfile {int name; int obfd; int objfile_obstack; } ;
struct ecoff_debug_swap {int external_fdr_size; int (* swap_fdr_in ) (int ,char*,int *) ;} ;
struct TYPE_2__ {int ifdMax; } ;
struct ecoff_debug_info {char* external_fdr; int * fdr; TYPE_1__ symbolic_header; } ;
typedef int FDR ;


 int GLEVEL_2 ;
 int buildsym_new_init () ;
 scalar_t__ compare_glevel (int ,int ) ;
 int cur_bfd ;
 struct ecoff_debug_info* debug_info ;
 struct ecoff_debug_swap const* debug_swap ;
 int free_header_files () ;
 int gdb_flush (int ) ;
 int gdb_stdout ;
 int init_header_files () ;
 scalar_t__ max_gdbinfo ;
 int max_glevel ;
 scalar_t__ obstack_alloc (int *,int) ;
 int parse_partial_symbols (struct objfile*) ;
 int printf_unfiltered (char*,...) ;
 int stabsread_new_init () ;
 int stub1 (int ,char*,int *) ;

void
mdebug_build_psymtabs (struct objfile *objfile,
         const struct ecoff_debug_swap *swap,
         struct ecoff_debug_info *info)
{
  cur_bfd = objfile->obfd;
  debug_swap = swap;
  debug_info = info;

  stabsread_new_init ();
  buildsym_new_init ();
  free_header_files ();
  init_header_files ();


  if (info->fdr == (FDR *) ((void*)0))
    {
      char *fdr_src;
      char *fdr_end;
      FDR *fdr_ptr;

      info->fdr = (FDR *) obstack_alloc (&objfile->objfile_obstack,
      (info->symbolic_header.ifdMax
       * sizeof (FDR)));
      fdr_src = info->external_fdr;
      fdr_end = (fdr_src
   + info->symbolic_header.ifdMax * swap->external_fdr_size);
      fdr_ptr = info->fdr;
      for (; fdr_src < fdr_end; fdr_src += swap->external_fdr_size, fdr_ptr++)
 (*swap->swap_fdr_in) (objfile->obfd, fdr_src, fdr_ptr);
    }

  parse_partial_symbols (objfile);
}
