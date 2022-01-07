
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct hfsc_class {scalar_t__ cl_cfmin; scalar_t__ level; scalar_t__ cl_vt; TYPE_1__* cl_parent; } ;
struct TYPE_2__ {scalar_t__ cl_cvtmin; } ;


 struct hfsc_class* vttree_firstfit (struct hfsc_class*,scalar_t__) ;

__attribute__((used)) static struct hfsc_class *
vttree_get_minvt(struct hfsc_class *cl, u64 cur_time)
{

 if (cl->cl_cfmin > cur_time)
  return ((void*)0);

 while (cl->level > 0) {
  cl = vttree_firstfit(cl, cur_time);
  if (cl == ((void*)0))
   return ((void*)0);



  if (cl->cl_parent->cl_cvtmin < cl->cl_vt)
   cl->cl_parent->cl_cvtmin = cl->cl_vt;
 }
 return cl;
}
