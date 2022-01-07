
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ classid; } ;
struct cbq_class {scalar_t__ defmap; struct cbq_class* split; TYPE_1__ common; struct cbq_class* tparent; } ;


 int cbq_sync_defmap (struct cbq_class*) ;

__attribute__((used)) static void cbq_change_defmap(struct cbq_class *cl, u32 splitid, u32 def, u32 mask)
{
 struct cbq_class *split = ((void*)0);

 if (splitid == 0) {
  if ((split = cl->split) == ((void*)0))
   return;
  splitid = split->common.classid;
 }

 if (split == ((void*)0) || split->common.classid != splitid) {
  for (split = cl->tparent; split; split = split->tparent)
   if (split->common.classid == splitid)
    break;
 }

 if (split == ((void*)0))
  return;

 if (cl->split != split) {
  cl->defmap = 0;
  cbq_sync_defmap(cl);
  cl->split = split;
  cl->defmap = def&mask;
 } else
  cl->defmap = (cl->defmap&~mask)|(def&mask);

 cbq_sync_defmap(cl);
}
