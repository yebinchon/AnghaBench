
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct postfix_elt {int op; int list; int * operand; } ;
struct filter_parse_state {int postfix; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct postfix_elt* kmalloc (int,int ) ;
 int list_add_tail (int *,int *) ;

__attribute__((used)) static int postfix_append_op(struct filter_parse_state *ps, int op)
{
 struct postfix_elt *elt;

 elt = kmalloc(sizeof(*elt), GFP_KERNEL);
 if (!elt)
  return -ENOMEM;

 elt->op = op;
 elt->operand = ((void*)0);

 list_add_tail(&elt->list, &ps->postfix);

 return 0;
}
