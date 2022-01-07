
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct Qdisc {int dummy; } ;


 unsigned long atm_tc_get (struct Qdisc*,int ) ;

__attribute__((used)) static unsigned long atm_tc_bind_filter(struct Qdisc *sch,
     unsigned long parent, u32 classid)
{
 return atm_tc_get(sch, classid);
}
