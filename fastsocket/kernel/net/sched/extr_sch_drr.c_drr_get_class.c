
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct drr_class {int refcnt; } ;
struct Qdisc {int dummy; } ;


 struct drr_class* drr_find_class (struct Qdisc*,int ) ;

__attribute__((used)) static unsigned long drr_get_class(struct Qdisc *sch, u32 classid)
{
 struct drr_class *cl = drr_find_class(sch, classid);

 if (cl != ((void*)0))
  cl->refcnt++;

 return (unsigned long)cl;
}
