
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int edge ;
typedef int basic_block ;


 int EDGE_SUCC (int ,int ) ;
 int gcc_assert (int ) ;
 int single_succ_p (int ) ;

__attribute__((used)) static inline edge
single_succ_edge (basic_block bb)
{
  gcc_assert (single_succ_p (bb));
  return EDGE_SUCC (bb, 0);
}
