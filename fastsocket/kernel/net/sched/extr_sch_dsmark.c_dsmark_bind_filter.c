
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct Qdisc {int dummy; } ;


 unsigned long dsmark_get (struct Qdisc*,int ) ;

__attribute__((used)) static unsigned long dsmark_bind_filter(struct Qdisc *sch,
     unsigned long parent, u32 classid)
{
 return dsmark_get(sch, classid);
}
