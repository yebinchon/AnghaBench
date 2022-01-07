
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tree ;
typedef TYPE_1__* edge ;
typedef int basic_block ;
struct TYPE_3__ {void* goto_locus; } ;


 scalar_t__ COND_EXPR ;
 int COND_EXPR_ELSE (int) ;
 int COND_EXPR_THEN (int) ;
 int EDGE_FALSE_VALUE ;
 int EDGE_TRUE_VALUE ;
 void* EXPR_LOCATION (int ) ;
 void* EXPR_LOCUS (int ) ;
 int GOTO_DESTINATION (int ) ;
 scalar_t__ TREE_CODE (int) ;
 int gcc_assert (int) ;
 int label_to_block (int) ;
 int last_stmt (int ) ;
 TYPE_1__* make_edge (int ,int ,int ) ;

__attribute__((used)) static void
make_cond_expr_edges (basic_block bb)
{
  tree entry = last_stmt (bb);
  basic_block then_bb, else_bb;
  tree then_label, else_label;
  edge e;

  gcc_assert (entry);
  gcc_assert (TREE_CODE (entry) == COND_EXPR);


  then_label = GOTO_DESTINATION (COND_EXPR_THEN (entry));
  else_label = GOTO_DESTINATION (COND_EXPR_ELSE (entry));
  then_bb = label_to_block (then_label);
  else_bb = label_to_block (else_label);

  e = make_edge (bb, then_bb, EDGE_TRUE_VALUE);



  e->goto_locus = EXPR_LOCUS (COND_EXPR_THEN (entry));

  e = make_edge (bb, else_bb, EDGE_FALSE_VALUE);
  if (e)
    {



      e->goto_locus = EXPR_LOCUS (COND_EXPR_ELSE (entry));

    }
}
