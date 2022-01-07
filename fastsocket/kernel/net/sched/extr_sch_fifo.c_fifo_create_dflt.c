
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Qdisc_ops {int dummy; } ;
struct Qdisc {int handle; int dev_queue; } ;


 int ENOMEM ;
 struct Qdisc* ERR_PTR (int) ;
 int TC_H_MAKE (int ,int) ;
 int fifo_set_limit (struct Qdisc*,unsigned int) ;
 struct Qdisc* qdisc_create_dflt (int ,int ,struct Qdisc_ops*,int ) ;
 int qdisc_destroy (struct Qdisc*) ;
 int qdisc_dev (struct Qdisc*) ;

struct Qdisc *fifo_create_dflt(struct Qdisc *sch, struct Qdisc_ops *ops,
          unsigned int limit)
{
 struct Qdisc *q;
 int err = -ENOMEM;

 q = qdisc_create_dflt(qdisc_dev(sch), sch->dev_queue,
         ops, TC_H_MAKE(sch->handle, 1));
 if (q) {
  err = fifo_set_limit(q, limit);
  if (err < 0) {
   qdisc_destroy(q);
   q = ((void*)0);
  }
 }

 return q ? : ERR_PTR(err);
}
