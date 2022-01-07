
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int location_t ;
struct TYPE_4__ {int (* init ) (char const*) ;} ;
struct TYPE_3__ {scalar_t__ (* init ) () ;} ;


 int BUILTINS_LOCATION ;
 int TV_SYMOUT ;
 TYPE_2__* debug_hooks ;
 char const* dump_base_name ;
 scalar_t__ dwarf2out_do_frame () ;
 int dwarf2out_frame_init () ;
 int expand_dummy_function_end () ;
 int init_asm_output (char const*) ;
 int init_dummy_function_start () ;
 int init_eh () ;
 int init_expr_once () ;
 int init_optabs () ;
 char* input_filename ;
 scalar_t__ input_line ;
 int input_location ;
 TYPE_1__ lang_hooks ;
 scalar_t__ stub1 () ;
 int stub2 (char const*) ;
 int timevar_pop (int ) ;
 int timevar_push (int ) ;

__attribute__((used)) static int
lang_dependent_init (const char *name)
{
  location_t save_loc = input_location;
  if (dump_base_name == 0)
    dump_base_name = name && name[0] ? name : "gccdump";





  input_filename = "<built-in>";
  input_line = 0;

  if (lang_hooks.init () == 0)
    return 0;
  input_location = save_loc;

  init_asm_output (name);



  init_eh ();
  init_optabs ();



  init_dummy_function_start ();
  init_expr_once ();
  expand_dummy_function_end ();



  timevar_push (TV_SYMOUT);
  (*debug_hooks->init) (name);

  timevar_pop (TV_SYMOUT);

  return 1;
}
