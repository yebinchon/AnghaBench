
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_10__ {int (* finish ) (int ) ;} ;
struct TYPE_7__ {int (* final_write_globals ) () ;} ;
struct TYPE_9__ {TYPE_2__ decls; int (* clear_binding_stack ) () ;int (* parse_file ) (int ) ;} ;
struct TYPE_6__ {int (* file_end ) () ;} ;
struct TYPE_8__ {TYPE_1__ asm_out; } ;


 char* IDENT_ASM_OP ;
 int TV_PARSE ;
 int TV_SYMOUT ;
 int asm_out_file ;
 int aux_base_name ;
 int cgraph_varpool_assemble_pending_decls () ;
 int coverage_finish () ;
 int coverage_init (int ) ;
 TYPE_5__* debug_hooks ;
 int dw2_output_indirect_constants () ;
 scalar_t__ dwarf2out_do_frame () ;
 int dwarf2out_frame_finish () ;
 scalar_t__ errorcount ;
 int finish_aliases_2 () ;
 scalar_t__ flag_mudflap ;
 int flag_no_ident ;
 scalar_t__ flag_syntax_only ;
 int fprintf (int ,char*,char*,char*) ;
 int init_cgraph () ;
 int init_final (int ) ;
 TYPE_4__ lang_hooks ;
 int main_input_filename ;
 int mudflap_finish_file () ;
 int output_object_blocks () ;
 int output_shared_constant_pool () ;
 int process_pending_assemble_externals () ;
 int set_yydebug ;
 scalar_t__ sorrycount ;
 int stub1 (int ) ;
 int stub2 () ;
 int stub3 () ;
 int stub4 (int ) ;
 int stub5 () ;
 TYPE_3__ targetm ;
 int timevar_pop (int ) ;
 int timevar_push (int ) ;
 char* version_string ;
 int weak_finish () ;

__attribute__((used)) static void
compile_file (void)
{


  init_cgraph ();
  init_final (main_input_filename);
  coverage_init (aux_base_name);

  timevar_push (TV_PARSE);



  lang_hooks.parse_file (set_yydebug);



  lang_hooks.clear_binding_stack ();



  timevar_pop (TV_PARSE);

  if (flag_syntax_only || errorcount || sorrycount)
    return;

  lang_hooks.decls.final_write_globals ();
  cgraph_varpool_assemble_pending_decls ();
  finish_aliases_2 ();




  coverage_finish ();


  if (flag_mudflap)
    mudflap_finish_file ();

  output_shared_constant_pool ();
  output_object_blocks ();



  weak_finish ();


  timevar_push (TV_SYMOUT);






  (*debug_hooks->finish) (main_input_filename);
  timevar_pop (TV_SYMOUT);



  dw2_output_indirect_constants ();


  process_pending_assemble_externals ();
  targetm.asm_out.file_end ();
}
