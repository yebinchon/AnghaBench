
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* (* decl_printable_name ) (int ,int) ;} ;
typedef int FILE ;


 int TDF_BLOCKS ;
 int TDF_DETAILS ;
 int TDF_STATS ;
 int brief_dump_cfg (int *) ;
 int current_function_decl ;
 int dump_cfg_stats (int *) ;
 int dump_function_to_file (int ,int *,int) ;
 int fprintf (int *,char*,...) ;
 int fputc (char,int *) ;
 TYPE_1__ lang_hooks ;
 int last_basic_block ;
 int n_basic_blocks ;
 int n_edges ;
 char* stub1 (int ,int) ;

void
dump_tree_cfg (FILE *file, int flags)
{
  if (flags & TDF_DETAILS)
    {
      const char *funcname
 = lang_hooks.decl_printable_name (current_function_decl, 2);

      fputc ('\n', file);
      fprintf (file, ";; Function %s\n\n", funcname);
      fprintf (file, ";; \n%d basic blocks, %d edges, last basic block %d.\n\n",
        n_basic_blocks, n_edges, last_basic_block);

      brief_dump_cfg (file);
      fprintf (file, "\n");
    }

  if (flags & TDF_STATS)
    dump_cfg_stats (file);

  dump_function_to_file (current_function_decl, file, flags | TDF_BLOCKS);
}
