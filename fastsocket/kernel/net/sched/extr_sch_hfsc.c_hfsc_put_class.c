
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hfsc_class {scalar_t__ refcnt; } ;
struct Qdisc {int dummy; } ;


 int hfsc_destroy_class (struct Qdisc*,struct hfsc_class*) ;

__attribute__((used)) static void
hfsc_put_class(struct Qdisc *sch, unsigned long arg)
{
 struct hfsc_class *cl = (struct hfsc_class *)arg;

 if (--cl->refcnt == 0)
  hfsc_destroy_class(sch, cl);
}
