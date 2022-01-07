
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct hfsc_class {int refcnt; } ;
struct Qdisc {int dummy; } ;


 struct hfsc_class* hfsc_find_class (int ,struct Qdisc*) ;

__attribute__((used)) static unsigned long
hfsc_get_class(struct Qdisc *sch, u32 classid)
{
 struct hfsc_class *cl = hfsc_find_class(classid, sch);

 if (cl != ((void*)0))
  cl->refcnt++;

 return (unsigned long)cl;
}
