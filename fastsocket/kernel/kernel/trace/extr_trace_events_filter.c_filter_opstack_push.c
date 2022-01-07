
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct opstack_op {int op; int list; } ;
struct filter_parse_state {int opstack; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 struct opstack_op* kmalloc (int,int ) ;
 int list_add (int *,int *) ;

__attribute__((used)) static int filter_opstack_push(struct filter_parse_state *ps, int op)
{
 struct opstack_op *opstack_op;

 opstack_op = kmalloc(sizeof(*opstack_op), GFP_KERNEL);
 if (!opstack_op)
  return -ENOMEM;

 opstack_op->op = op;
 list_add(&opstack_op->list, &ps->opstack);

 return 0;
}
