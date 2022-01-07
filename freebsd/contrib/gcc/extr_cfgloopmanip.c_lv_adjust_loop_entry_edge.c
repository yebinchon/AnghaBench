
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* edge ;
typedef scalar_t__ basic_block ;
struct TYPE_6__ {scalar_t__ dest; } ;


 int CDI_DOMINATORS ;
 int EDGE_TRUE_VALUE ;
 int gcc_assert (int) ;
 scalar_t__ ir_type () ;
 int lv_add_condition_to_bb (scalar_t__,scalar_t__,scalar_t__,void*) ;
 int lv_adjust_loop_header_phi (scalar_t__,scalar_t__,scalar_t__,TYPE_1__*) ;
 TYPE_1__* make_edge (scalar_t__,scalar_t__,int ) ;
 int set_immediate_dominator (int ,scalar_t__,scalar_t__) ;
 scalar_t__ split_edge (TYPE_1__*) ;

__attribute__((used)) static basic_block
lv_adjust_loop_entry_edge (basic_block first_head,
      basic_block second_head,
      edge e,
      void *cond_expr)
{
  basic_block new_head = ((void*)0);
  edge e1;

  gcc_assert (e->dest == second_head);



  new_head = split_edge (e);


  lv_add_condition_to_bb (first_head, second_head, new_head,
     cond_expr);


  e1 = make_edge (new_head, first_head, ir_type () ? EDGE_TRUE_VALUE : 0);
  set_immediate_dominator (CDI_DOMINATORS, first_head, new_head);
  set_immediate_dominator (CDI_DOMINATORS, second_head, new_head);


  lv_adjust_loop_header_phi (first_head, second_head, new_head, e1);

  return new_head;
}
