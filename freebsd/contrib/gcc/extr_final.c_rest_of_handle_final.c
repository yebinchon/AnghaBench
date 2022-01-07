
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int rtx ;
struct TYPE_2__ {int (* function_decl ) (int ) ;} ;


 int DECL_RTL (int ) ;
 scalar_t__ GET_CODE (int ) ;
 int MEM_P (int ) ;
 scalar_t__ SYMBOL_REF ;
 int TV_SYMOUT ;
 int XEXP (int ,int ) ;
 char* XSTR (int ,int ) ;
 int asm_out_file ;
 int assemble_end_function (int ,char const*) ;
 int assemble_start_function (int ,char const*) ;
 int current_function_decl ;
 TYPE_1__* debug_hooks ;
 int fflush (int ) ;
 int final (int ,int ,int ) ;
 int final_end_function () ;
 int final_start_function (int ,int ,int ) ;
 int free_basic_block_vars () ;
 int gcc_assert (int) ;
 int get_insns () ;
 int optimize ;
 int output_function_exception_table () ;
 int quiet_flag ;
 int stub1 (int ) ;
 int timevar_pop (int ) ;
 int timevar_push (int ) ;
 int user_defined_section_attribute ;

__attribute__((used)) static unsigned int
rest_of_handle_final (void)
{
  rtx x;
  const char *fnname;




  x = DECL_RTL (current_function_decl);
  gcc_assert (MEM_P (x));
  x = XEXP (x, 0);
  gcc_assert (GET_CODE (x) == SYMBOL_REF);
  fnname = XSTR (x, 0);

  assemble_start_function (current_function_decl, fnname);
  final_start_function (get_insns (), asm_out_file, optimize);
  final (get_insns (), asm_out_file, optimize);
  final_end_function ();







  assemble_end_function (current_function_decl, fnname);



  output_function_exception_table ();


  user_defined_section_attribute = 0;

  if (! quiet_flag)
    fflush (asm_out_file);


  free_basic_block_vars ();
  timevar_push (TV_SYMOUT);
  (*debug_hooks->function_decl) (current_function_decl);
  timevar_pop (TV_SYMOUT);
  return 0;
}
