
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int tree ;
struct mem_ref_group {int dummy; } ;
struct loop {unsigned int num_nodes; } ;
typedef int block_stmt_iterator ;
typedef TYPE_1__* basic_block ;
struct TYPE_5__ {struct loop* loop_father; } ;


 scalar_t__ MODIFY_EXPR ;
 scalar_t__ REFERENCE_CLASS_P (int ) ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_OPERAND (int ,int) ;
 int bsi_end_p (int ) ;
 int bsi_next (int *) ;
 int bsi_start (TYPE_1__*) ;
 int bsi_stmt (int ) ;
 int free (TYPE_1__**) ;
 int gather_memory_references_ref (struct loop*,struct mem_ref_group**,int ,int,int ) ;
 TYPE_1__** get_loop_body_in_dom_order (struct loop*) ;

__attribute__((used)) static struct mem_ref_group *
gather_memory_references (struct loop *loop)
{
  basic_block *body = get_loop_body_in_dom_order (loop);
  basic_block bb;
  unsigned i;
  block_stmt_iterator bsi;
  tree stmt, lhs, rhs;
  struct mem_ref_group *refs = ((void*)0);



  for (i = 0; i < loop->num_nodes; i++)
    {
      bb = body[i];
      if (bb->loop_father != loop)
 continue;

      for (bsi = bsi_start (bb); !bsi_end_p (bsi); bsi_next (&bsi))
 {
   stmt = bsi_stmt (bsi);
   if (TREE_CODE (stmt) != MODIFY_EXPR)
     continue;

   lhs = TREE_OPERAND (stmt, 0);
   rhs = TREE_OPERAND (stmt, 1);

   if (REFERENCE_CLASS_P (rhs))
     gather_memory_references_ref (loop, &refs, rhs, 0, stmt);
   if (REFERENCE_CLASS_P (lhs))
     gather_memory_references_ref (loop, &refs, lhs, 1, stmt);
 }
    }
  free (body);

  return refs;
}
