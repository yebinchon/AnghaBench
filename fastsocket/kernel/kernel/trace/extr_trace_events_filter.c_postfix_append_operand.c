
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct postfix_elt {int list; int operand; int op; } ;
struct filter_parse_state {int postfix; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int OP_NONE ;
 int kfree (struct postfix_elt*) ;
 struct postfix_elt* kmalloc (int,int ) ;
 int kstrdup (char*,int ) ;
 int list_add_tail (int *,int *) ;

__attribute__((used)) static int postfix_append_operand(struct filter_parse_state *ps, char *operand)
{
 struct postfix_elt *elt;

 elt = kmalloc(sizeof(*elt), GFP_KERNEL);
 if (!elt)
  return -ENOMEM;

 elt->op = OP_NONE;
 elt->operand = kstrdup(operand, GFP_KERNEL);
 if (!elt->operand) {
  kfree(elt);
  return -ENOMEM;
 }

 list_add_tail(&elt->list, &ps->postfix);

 return 0;
}
