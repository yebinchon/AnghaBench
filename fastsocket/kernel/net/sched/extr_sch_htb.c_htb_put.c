
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct htb_class {scalar_t__ refcnt; } ;
struct Qdisc {int dummy; } ;


 int htb_destroy_class (struct Qdisc*,struct htb_class*) ;

__attribute__((used)) static void htb_put(struct Qdisc *sch, unsigned long arg)
{
 struct htb_class *cl = (struct htb_class *)arg;

 if (--cl->refcnt == 0)
  htb_destroy_class(sch, cl);
}
