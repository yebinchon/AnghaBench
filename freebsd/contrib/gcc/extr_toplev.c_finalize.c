
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* finish ) () ;} ;


 int asm_file_name ;
 scalar_t__ asm_out_file ;
 scalar_t__ aux_info_file ;
 int aux_info_file_name ;
 int dump_alloc_pool_statistics () ;
 int dump_ggc_loc_statistics () ;
 int dump_rtx_statistics () ;
 int dump_tree_statistics () ;
 int dump_varray_statistics () ;
 scalar_t__ errorcount ;
 int fatal_error (char*,int ) ;
 scalar_t__ fclose (scalar_t__) ;
 scalar_t__ ferror (scalar_t__) ;
 int finish_optimization_passes () ;
 scalar_t__ flag_gen_aux_info ;
 int free_reg_info () ;
 int ggc_print_statistics () ;
 TYPE_1__ lang_hooks ;
 scalar_t__ mem_report ;
 int stringpool_statistics () ;
 int stub1 () ;
 int unlink (int ) ;

__attribute__((used)) static void
finalize (void)
{

  if (flag_gen_aux_info)
    {
      fclose (aux_info_file);
      if (errorcount)
 unlink (aux_info_file_name);
    }





  if (asm_out_file)
    {
      if (ferror (asm_out_file) != 0)
 fatal_error ("error writing to %s: %m", asm_file_name);
      if (fclose (asm_out_file) != 0)
 fatal_error ("error closing %s: %m", asm_file_name);
    }

  finish_optimization_passes ();

  if (mem_report)
    {
      ggc_print_statistics ();
      stringpool_statistics ();
      dump_tree_statistics ();
      dump_rtx_statistics ();
      dump_varray_statistics ();
      dump_alloc_pool_statistics ();
      dump_ggc_loc_statistics ();
    }


  free_reg_info ();


  lang_hooks.finish ();
}
