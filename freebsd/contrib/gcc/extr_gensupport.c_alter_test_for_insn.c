
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct queue_elem {int data; } ;


 int XSTR (int ,int) ;
 char const* join_c_conditions (int ,int ) ;

__attribute__((used)) static const char *
alter_test_for_insn (struct queue_elem *ce_elem,
       struct queue_elem *insn_elem)
{
  return join_c_conditions (XSTR (ce_elem->data, 1),
       XSTR (insn_elem->data, 2));
}
