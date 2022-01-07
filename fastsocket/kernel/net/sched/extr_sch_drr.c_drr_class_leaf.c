
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drr_class {struct Qdisc* qdisc; } ;
struct Qdisc {int dummy; } ;



__attribute__((used)) static struct Qdisc *drr_class_leaf(struct Qdisc *sch, unsigned long arg)
{
 struct drr_class *cl = (struct drr_class *)arg;

 return cl->qdisc;
}
