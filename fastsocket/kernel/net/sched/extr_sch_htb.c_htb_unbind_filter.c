
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct htb_class {int filter_cnt; } ;
struct Qdisc {int dummy; } ;



__attribute__((used)) static void htb_unbind_filter(struct Qdisc *sch, unsigned long arg)
{
 struct htb_class *cl = (struct htb_class *)arg;

 if (cl)
  cl->filter_cnt--;
}
