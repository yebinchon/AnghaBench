
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
struct count_ptr_d {scalar_t__ ptr; int count; } ;


 scalar_t__ ADDR_EXPR ;
 scalar_t__ INDIRECT_REF_P (int ) ;
 int NULL_TREE ;
 scalar_t__ TREE_CODE (int ) ;
 scalar_t__ TREE_OPERAND (int ,int ) ;

__attribute__((used)) static tree
count_ptr_derefs (tree *tp, int *walk_subtrees, void *data)
{
  struct count_ptr_d *count_p = (struct count_ptr_d *) data;




  if (TREE_CODE (*tp) == ADDR_EXPR)
    {
      *walk_subtrees = 0;
      return NULL_TREE;
    }

  if (INDIRECT_REF_P (*tp) && TREE_OPERAND (*tp, 0) == count_p->ptr)
    count_p->count++;

  return NULL_TREE;
}
