
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {TYPE_1__* s_qcop; } ;
typedef scalar_t__ qid_t ;
struct TYPE_2__ {int quota_sync; int get_xquota; int set_xquota; int get_xstate; int set_xstate; } ;


 int CAP_SYS_ADMIN ;
 int EINVAL ;
 int ENODEV ;
 int ENOSYS ;
 int EPERM ;







 int XQM_GRPQUOTA ;
 int XQM_MAXQUOTAS ;
 int XQM_USRQUOTA ;
 int capable (int ) ;
 scalar_t__ current_euid () ;
 int in_egroup_p (scalar_t__) ;

__attribute__((used)) static int xqm_quotactl_valid(struct super_block *sb, int type, int cmd,
         qid_t id)
{
 if (type >= XQM_MAXQUOTAS)
  return -EINVAL;
 if (!sb)
  return -ENODEV;
 if (!sb->s_qcop)
  return -ENOSYS;

 switch (cmd) {
  case 131:
  case 132:
  case 130:
   if (!sb->s_qcop->set_xstate)
    return -ENOSYS;
   break;
  case 134:
   if (!sb->s_qcop->get_xstate)
    return -ENOSYS;
   break;
  case 128:
   if (!sb->s_qcop->set_xquota)
    return -ENOSYS;
   break;
  case 133:
   if (!sb->s_qcop->get_xquota)
    return -ENOSYS;
   break;
  case 129:
   if (!sb->s_qcop->quota_sync)
    return -ENOSYS;
   break;
  default:
   return -EINVAL;
 }


 if (cmd == 133) {
  if (((type == XQM_USRQUOTA && current_euid() != id) ||
       (type == XQM_GRPQUOTA && !in_egroup_p(id))) &&
       !capable(CAP_SYS_ADMIN))
   return -EPERM;
 } else if (cmd != 134 && cmd != 129) {
  if (!capable(CAP_SYS_ADMIN))
   return -EPERM;
 }

 return 0;
}
