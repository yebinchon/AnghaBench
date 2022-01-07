
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mem_address {void* index; void* base; } ;
typedef int block_stmt_iterator ;


 int NULL_TREE ;
 void* force_gimple_operand_bsi (int *,void*,int,int ) ;

__attribute__((used)) static void
gimplify_mem_ref_parts (block_stmt_iterator *bsi, struct mem_address *parts)
{
  if (parts->base)
    parts->base = force_gimple_operand_bsi (bsi, parts->base,
         1, NULL_TREE);
  if (parts->index)
    parts->index = force_gimple_operand_bsi (bsi, parts->index,
          1, NULL_TREE);
}
