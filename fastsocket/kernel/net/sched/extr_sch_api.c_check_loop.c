
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ stop; int fn; scalar_t__ count; scalar_t__ skip; } ;
struct check_loop_arg {int depth; TYPE_3__ w; struct Qdisc* p; } ;
struct Qdisc {TYPE_2__* ops; } ;
struct TYPE_5__ {TYPE_1__* cl_ops; } ;
struct TYPE_4__ {int (* walk ) (struct Qdisc*,TYPE_3__*) ;} ;


 int ELOOP ;
 int check_loop_fn ;
 int stub1 (struct Qdisc*,TYPE_3__*) ;

__attribute__((used)) static int check_loop(struct Qdisc *q, struct Qdisc *p, int depth)
{
 struct check_loop_arg arg;

 if (q->ops->cl_ops == ((void*)0))
  return 0;

 arg.w.stop = arg.w.skip = arg.w.count = 0;
 arg.w.fn = check_loop_fn;
 arg.depth = depth;
 arg.p = p;
 q->ops->cl_ops->walk(q, &arg.w);
 return arg.w.stop ? -ELOOP : 0;
}
