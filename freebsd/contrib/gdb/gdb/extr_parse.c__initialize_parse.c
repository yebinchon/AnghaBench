
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union type_stack_elt {int dummy; } type_stack_elt ;


 int DEPRECATED_REGISTER_GDBARCH_SWAP (int ) ;
 int add_set_cmd (char*,int ,int ,char*,char*,int *) ;
 int add_show_from_set (int ,int *) ;
 int build_parse () ;
 int class_maintenance ;
 int deprecated_register_gdbarch_swap (int *,int ,int (*) ()) ;
 int expressiondebug ;
 int msym_data_symbol_type ;
 int msym_text_symbol_type ;
 int msym_unknown_symbol_type ;
 int setdebuglist ;
 int showdebuglist ;
 union type_stack_elt* type_stack ;
 scalar_t__ type_stack_depth ;
 int type_stack_size ;
 int var_zinteger ;
 scalar_t__ xmalloc (int) ;

void
_initialize_parse (void)
{
  type_stack_size = 80;
  type_stack_depth = 0;
  type_stack = (union type_stack_elt *)
    xmalloc (type_stack_size * sizeof (*type_stack));

  build_parse ();




  DEPRECATED_REGISTER_GDBARCH_SWAP (msym_text_symbol_type);
  DEPRECATED_REGISTER_GDBARCH_SWAP (msym_data_symbol_type);
  DEPRECATED_REGISTER_GDBARCH_SWAP (msym_unknown_symbol_type);
  deprecated_register_gdbarch_swap (((void*)0), 0, build_parse);

  add_show_from_set (
     add_set_cmd ("expression", class_maintenance, var_zinteger,
    (char *) &expressiondebug,
    "Set expression debugging.\nWhen non-zero, the internal representation of expressions will be printed.",

    &setdebuglist),
        &showdebuglist);
}
