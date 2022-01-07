
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tree ;
typedef TYPE_1__* edge ;
typedef int block_stmt_iterator ;
typedef int basic_block ;
struct TYPE_3__ {int goto_locus; } ;


 int EDGE_FALLTHRU ;
 int EXPR_LOCATION (int ) ;
 int EXPR_LOCUS (int ) ;
 int GOTO_DESTINATION (int ) ;
 int bsi_last (int ) ;
 int bsi_remove (int *,int) ;
 int bsi_stmt (int ) ;
 int label_to_block (int ) ;
 int make_abnormal_goto_edges (int ,int) ;
 TYPE_1__* make_edge (int ,int ,int ) ;
 scalar_t__ simple_goto_p (int ) ;

__attribute__((used)) static void
make_goto_expr_edges (basic_block bb)
{
  block_stmt_iterator last = bsi_last (bb);
  tree goto_t = bsi_stmt (last);


  if (simple_goto_p (goto_t))
    {
      tree dest = GOTO_DESTINATION (goto_t);
      edge e = make_edge (bb, label_to_block (dest), EDGE_FALLTHRU);



      e->goto_locus = EXPR_LOCUS (goto_t);

      bsi_remove (&last, 1);
      return;
    }


  make_abnormal_goto_edges (bb, 0);
}
