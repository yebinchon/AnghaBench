
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct htb_class {int refcnt; } ;
struct Qdisc {int dummy; } ;


 struct htb_class* htb_find (int ,struct Qdisc*) ;

__attribute__((used)) static unsigned long htb_get(struct Qdisc *sch, u32 classid)
{
 struct htb_class *cl = htb_find(classid, sch);
 if (cl)
  cl->refcnt++;
 return (unsigned long)cl;
}
