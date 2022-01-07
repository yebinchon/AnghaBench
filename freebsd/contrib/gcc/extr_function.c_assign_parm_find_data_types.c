
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int * tree ;
struct assign_parm_data_one {int named_arg; int passed_pointer; int nominal_mode; int passed_mode; int promoted_mode; int * passed_type; int * nominal_type; } ;
struct assign_parm_data_all {int args_so_far; } ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
struct TYPE_3__ {scalar_t__ (* promote_function_args ) (int *) ;scalar_t__ (* strict_argument_naming ) (int *) ;} ;
struct TYPE_4__ {TYPE_1__ calls; } ;


 int * DECL_ARG_TYPE (int *) ;
 scalar_t__ PARM_DECL ;
 int Pmode ;
 scalar_t__ TREE_CHAIN (int *) ;
 scalar_t__ TREE_CODE (int *) ;
 int * TREE_TYPE (int *) ;
 int * TYPE_FIELDS (int *) ;
 int TYPE_MODE (int *) ;
 scalar_t__ TYPE_TRANSPARENT_UNION (int *) ;
 int TYPE_UNSIGNED (int *) ;
 scalar_t__ UNION_TYPE ;
 scalar_t__ VOID_TYPE_P (int *) ;
 int VOIDmode ;
 int * build_pointer_type (int *) ;
 int * current_function_decl ;
 int current_function_stdarg ;
 int * error_mark_node ;
 int memset (struct assign_parm_data_one*,int ,int) ;
 scalar_t__ pass_by_reference (int *,int,int *,int) ;
 int promote_mode (int *,int,int*,int) ;
 scalar_t__ stub1 (int *) ;
 scalar_t__ stub2 (int *) ;
 TYPE_2__ targetm ;
 int * void_type_node ;

__attribute__((used)) static void
assign_parm_find_data_types (struct assign_parm_data_all *all, tree parm,
        struct assign_parm_data_one *data)
{
  tree nominal_type, passed_type;
  enum machine_mode nominal_mode, passed_mode, promoted_mode;

  memset (data, 0, sizeof (*data));


  if (!current_function_stdarg)
    data->named_arg = 1;
  else if (TREE_CHAIN (parm))
    data->named_arg = 1;
  else if (targetm.calls.strict_argument_naming (&all->args_so_far))
    data->named_arg = 1;
  else
    data->named_arg = 0;

  nominal_type = TREE_TYPE (parm);
  passed_type = DECL_ARG_TYPE (parm);



  if (TREE_TYPE (parm) == error_mark_node


      || TREE_CODE (parm) != PARM_DECL
      || passed_type == ((void*)0)
      || VOID_TYPE_P (nominal_type))
    {
      nominal_type = passed_type = void_type_node;
      nominal_mode = passed_mode = promoted_mode = VOIDmode;
      goto egress;
    }



  passed_mode = TYPE_MODE (passed_type);
  nominal_mode = TYPE_MODE (nominal_type);




  if (TREE_CODE (passed_type) == UNION_TYPE
      && TYPE_TRANSPARENT_UNION (passed_type))
    passed_type = TREE_TYPE (TYPE_FIELDS (passed_type));


  if (pass_by_reference (&all->args_so_far, passed_mode,
    passed_type, data->named_arg))
    {
      passed_type = nominal_type = build_pointer_type (passed_type);
      data->passed_pointer = 1;
      passed_mode = nominal_mode = Pmode;
    }


  promoted_mode = passed_mode;
  if (targetm.calls.promote_function_args (TREE_TYPE (current_function_decl)))
    {
      int unsignedp = TYPE_UNSIGNED (passed_type);
      promoted_mode = promote_mode (passed_type, promoted_mode,
        &unsignedp, 1);
    }

 egress:
  data->nominal_type = nominal_type;
  data->passed_type = passed_type;
  data->nominal_mode = nominal_mode;
  data->passed_mode = passed_mode;
  data->promoted_mode = promoted_mode;
}
