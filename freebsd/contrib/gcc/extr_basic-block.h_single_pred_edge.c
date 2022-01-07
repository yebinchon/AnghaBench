
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int edge ;
typedef int basic_block ;


 int EDGE_PRED (int ,int ) ;
 int gcc_assert (int ) ;
 int single_pred_p (int ) ;

__attribute__((used)) static inline edge
single_pred_edge (basic_block bb)
{
  gcc_assert (single_pred_p (bb));
  return EDGE_PRED (bb, 0);
}
