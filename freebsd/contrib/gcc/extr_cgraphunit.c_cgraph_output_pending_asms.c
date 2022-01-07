
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cgraph_asm_node {int asm_str; struct cgraph_asm_node* next; } ;


 int assemble_asm (int ) ;
 struct cgraph_asm_node* cgraph_asm_nodes ;
 scalar_t__ errorcount ;
 scalar_t__ sorrycount ;

__attribute__((used)) static void
cgraph_output_pending_asms (void)
{
  struct cgraph_asm_node *can;

  if (errorcount || sorrycount)
    return;

  for (can = cgraph_asm_nodes; can; can = can->next)
    assemble_asm (can->asm_str);
  cgraph_asm_nodes = ((void*)0);
}
