
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct drr_class {scalar_t__ refcnt; } ;
struct Qdisc {int dummy; } ;


 int drr_destroy_class (struct Qdisc*,struct drr_class*) ;

__attribute__((used)) static void drr_put_class(struct Qdisc *sch, unsigned long arg)
{
 struct drr_class *cl = (struct drr_class *)arg;

 if (--cl->refcnt == 0)
  drr_destroy_class(sch, cl);
}
