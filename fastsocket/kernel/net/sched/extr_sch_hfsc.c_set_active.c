
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hfsc_class {int cl_flags; TYPE_1__* sched; int dlist; } ;
struct TYPE_2__ {int droplist; } ;


 int HFSC_FSC ;
 int HFSC_RSC ;
 int init_ed (struct hfsc_class*,unsigned int) ;
 int init_vf (struct hfsc_class*,unsigned int) ;
 int list_add_tail (int *,int *) ;

__attribute__((used)) static void
set_active(struct hfsc_class *cl, unsigned int len)
{
 if (cl->cl_flags & HFSC_RSC)
  init_ed(cl, len);
 if (cl->cl_flags & HFSC_FSC)
  init_vf(cl, len);

 list_add_tail(&cl->dlist, &cl->sched->droplist);
}
