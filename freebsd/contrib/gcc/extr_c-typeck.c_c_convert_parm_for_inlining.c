
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int tree ;
struct TYPE_3__ {scalar_t__ (* promote_prototypes ) (int ) ;} ;
struct TYPE_4__ {TYPE_1__ calls; } ;


 scalar_t__ INTEGRAL_TYPE_P (int ) ;
 int TREE_TYPE (int ) ;
 scalar_t__ TYPE_ARG_TYPES (int ) ;
 scalar_t__ TYPE_MAIN_VARIANT (int ) ;
 scalar_t__ TYPE_PRECISION (int ) ;
 int convert_for_assignment (int ,int ,int ,int ,int ,int) ;
 int default_conversion (int ) ;
 int ic_argpass_nonproto ;
 int integer_type_node ;
 scalar_t__ stub1 (int ) ;
 TYPE_2__ targetm ;

tree
c_convert_parm_for_inlining (tree parm, tree value, tree fn, int argnum)
{
  tree ret, type;






  if (!value
      || (TYPE_ARG_TYPES (TREE_TYPE (fn))
   && (TYPE_MAIN_VARIANT (TREE_TYPE (parm))
       == TYPE_MAIN_VARIANT (TREE_TYPE (value)))))
    return value;

  type = TREE_TYPE (parm);
  ret = convert_for_assignment (type, value,
    ic_argpass_nonproto, fn,
    fn, argnum);
  if (targetm.calls.promote_prototypes (TREE_TYPE (fn))
      && INTEGRAL_TYPE_P (type)
      && (TYPE_PRECISION (type) < TYPE_PRECISION (integer_type_node)))
    ret = default_conversion (ret);
  return ret;
}
