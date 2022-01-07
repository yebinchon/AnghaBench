
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int tree ;
struct TYPE_3__ {scalar_t__ (* promote_prototypes ) (int ) ;} ;
struct TYPE_4__ {TYPE_1__ calls; } ;


 scalar_t__ COMPLETE_TYPE_P (int ) ;
 scalar_t__ INTEGRAL_TYPE_P (int ) ;
 scalar_t__ INT_CST_LT_UNSIGNED (int ,int ) ;
 scalar_t__ TREE_ADDRESSABLE (int ) ;
 int TYPE_QUAL_RESTRICT ;
 int TYPE_SIZE (int ) ;
 int build_qualified_type (int ,int ) ;
 int build_reference_type (int ) ;
 int integer_type_node ;
 scalar_t__ stub1 (int ) ;
 TYPE_2__ targetm ;

tree
type_passed_as (tree type)
{

  if (TREE_ADDRESSABLE (type))
    {
      type = build_reference_type (type);

      type = build_qualified_type (type, TYPE_QUAL_RESTRICT);
    }
  else if (targetm.calls.promote_prototypes (type)
    && INTEGRAL_TYPE_P (type)
    && COMPLETE_TYPE_P (type)
    && INT_CST_LT_UNSIGNED (TYPE_SIZE (type),
       TYPE_SIZE (integer_type_node)))
    type = integer_type_node;

  return type;
}
