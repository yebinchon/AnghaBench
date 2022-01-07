
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tc_cbq_ovl {int strategy; int penalty; int priority2; } ;
struct cbq_class {int penalty; int overlimit; int priority2; int priority; } ;


 int EINVAL ;
 int TC_CBQ_MAXPRIO ;





 int cbq_ovl_classic ;
 int cbq_ovl_delay ;
 int cbq_ovl_drop ;
 int cbq_ovl_lowprio ;
 int cbq_ovl_rclassic ;

__attribute__((used)) static int cbq_set_overlimit(struct cbq_class *cl, struct tc_cbq_ovl *ovl)
{
 switch (ovl->strategy) {
 case 132:
  cl->overlimit = cbq_ovl_classic;
  break;
 case 131:
  cl->overlimit = cbq_ovl_delay;
  break;
 case 129:
  if (ovl->priority2-1 >= TC_CBQ_MAXPRIO ||
      ovl->priority2-1 <= cl->priority)
   return -EINVAL;
  cl->priority2 = ovl->priority2-1;
  cl->overlimit = cbq_ovl_lowprio;
  break;
 case 130:
  cl->overlimit = cbq_ovl_drop;
  break;
 case 128:
  cl->overlimit = cbq_ovl_rclassic;
  break;
 default:
  return -EINVAL;
 }
 cl->penalty = ovl->penalty;
 return 0;
}
