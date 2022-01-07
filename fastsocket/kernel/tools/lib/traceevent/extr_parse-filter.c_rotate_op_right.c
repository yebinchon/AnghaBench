
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct filter_arg* right; } ;
struct filter_arg {TYPE_1__ op; } ;



__attribute__((used)) static struct filter_arg *
rotate_op_right(struct filter_arg *a, struct filter_arg *b)
{
 struct filter_arg *arg;

 arg = a->op.right;
 a->op.right = b;
 return arg;
}
