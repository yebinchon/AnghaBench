
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct Qdisc {int dummy; } ;


 unsigned long TC_H_MIN (int ) ;
 int pr_debug (char*,struct Qdisc*,int ,int ) ;
 int qdisc_priv (struct Qdisc*) ;

__attribute__((used)) static unsigned long dsmark_get(struct Qdisc *sch, u32 classid)
{
 pr_debug("dsmark_get(sch %p,[qdisc %p],classid %x)\n",
  sch, qdisc_priv(sch), classid);

 return TC_H_MIN(classid) + 1;
}
