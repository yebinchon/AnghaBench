
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int family; } ;
struct xfrm_userpolicy_info {int share; int action; int dir; TYPE_1__ sel; } ;




 int EAFNOSUPPORT ;
 int EINVAL ;






 int verify_policy_dir (int ) ;

__attribute__((used)) static int verify_newpolicy_info(struct xfrm_userpolicy_info *p)
{
 switch (p->share) {
 case 131:
 case 130:
 case 128:
 case 129:
  break;

 default:
  return -EINVAL;
 }

 switch (p->action) {
 case 133:
 case 132:
  break;

 default:
  return -EINVAL;
 }

 switch (p->sel.family) {
 case 135:
  break;

 case 134:



  return -EAFNOSUPPORT;


 default:
  return -EINVAL;
 }

 return verify_policy_dir(p->dir);
}
