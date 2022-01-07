
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int tree ;
struct TYPE_3__ {int (* guard_mask_bit ) () ;} ;
struct TYPE_4__ {TYPE_1__ cxx; } ;


 int ADDR_EXPR ;
 int INDIRECT_REF ;
 int NOP_EXPR ;
 int TREE_TYPE (int ) ;
 int build1 (int ,int ,int ) ;
 int build_pointer_type (int ) ;
 int char_type_node ;
 int stub1 () ;
 TYPE_2__ targetm ;

__attribute__((used)) static tree
get_guard_bits (tree guard)
{
  if (!targetm.cxx.guard_mask_bit ())
    {


      guard = build1 (ADDR_EXPR,
        build_pointer_type (TREE_TYPE (guard)),
        guard);
      guard = build1 (NOP_EXPR,
        build_pointer_type (char_type_node),
        guard);
      guard = build1 (INDIRECT_REF, char_type_node, guard);
    }

  return guard;
}
