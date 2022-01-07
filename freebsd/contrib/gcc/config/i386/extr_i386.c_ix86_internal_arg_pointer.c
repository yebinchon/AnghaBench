
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int rtx ;
struct TYPE_4__ {TYPE_1__* machine; } ;
struct TYPE_3__ {int force_align_arg_pointer; } ;


 scalar_t__ DECL_CONTEXT (int ) ;
 scalar_t__ DECL_FILE_SCOPE_P (int ) ;
 scalar_t__ DECL_NAME (int ) ;
 scalar_t__ FORCE_PREFERRED_STACK_BOUNDARY_IN_MAIN ;
 scalar_t__ FUNCTION_DECL ;
 scalar_t__ MAIN_NAME_P (scalar_t__) ;
 int Pmode ;
 scalar_t__ TREE_CODE (scalar_t__) ;
 int TREE_TYPE (int ) ;
 int TYPE_ATTRIBUTES (int ) ;
 TYPE_2__* cfun ;
 int copy_to_reg (int ) ;
 int current_function_decl ;
 int error (char*,int ) ;
 int gen_rtx_REG (int ,int) ;
 scalar_t__ ix86_force_align_arg_pointer ;
 int ix86_force_align_arg_pointer_string ;
 scalar_t__ lookup_attribute (int ,int ) ;
 int virtual_incoming_args_rtx ;
 int warning (int ,char*) ;

__attribute__((used)) static rtx
ix86_internal_arg_pointer (void)
{
  bool has_force_align_arg_pointer =
    (0 != lookup_attribute (ix86_force_align_arg_pointer_string,
       TYPE_ATTRIBUTES (TREE_TYPE (current_function_decl))));
  if ((FORCE_PREFERRED_STACK_BOUNDARY_IN_MAIN
       && DECL_NAME (current_function_decl)
       && MAIN_NAME_P (DECL_NAME (current_function_decl))
       && DECL_FILE_SCOPE_P (current_function_decl))
      || ix86_force_align_arg_pointer
      || has_force_align_arg_pointer)
    {


      if (DECL_CONTEXT (current_function_decl)
   && TREE_CODE (DECL_CONTEXT (current_function_decl)) == FUNCTION_DECL)
 {
   if (ix86_force_align_arg_pointer)
     warning (0, "-mstackrealign ignored for nested functions");
   if (has_force_align_arg_pointer)
     error ("%s not supported for nested functions",
     ix86_force_align_arg_pointer_string);
   return virtual_incoming_args_rtx;
 }
      cfun->machine->force_align_arg_pointer = gen_rtx_REG (Pmode, 2);
      return copy_to_reg (cfun->machine->force_align_arg_pointer);
    }
  else
    return virtual_incoming_args_rtx;
}
