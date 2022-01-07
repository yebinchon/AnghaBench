
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {TYPE_1__* s_qcop; } ;
typedef scalar_t__ qid_t ;
struct TYPE_2__ {int quota_sync; int get_dqblk; int set_dqblk; int get_info; int set_info; int quota_off; int quota_on; } ;


 int CAP_SYS_ADMIN ;
 int EINVAL ;
 int ENODEV ;
 int ENOSYS ;
 int EPERM ;
 int ESRCH ;
 int GRPQUOTA ;
 int MAXQUOTAS ;
 int USRQUOTA ;
 int capable (int ) ;
 scalar_t__ current_euid () ;
 int in_egroup_p (scalar_t__) ;
 int sb_has_quota_active (struct super_block*,int) ;

__attribute__((used)) static int generic_quotactl_valid(struct super_block *sb, int type, int cmd,
      qid_t id)
{
 if (type >= MAXQUOTAS)
  return -EINVAL;
 if (!sb && cmd != 128)
  return -ENODEV;

 if (sb && !sb->s_qcop)
  return -ENOSYS;

 switch (cmd) {
  case 135:
   break;
  case 131:
   if (!sb->s_qcop->quota_on)
    return -ENOSYS;
   break;
  case 132:
   if (!sb->s_qcop->quota_off)
    return -ENOSYS;
   break;
  case 130:
   if (!sb->s_qcop->set_info)
    return -ENOSYS;
   break;
  case 134:
   if (!sb->s_qcop->get_info)
    return -ENOSYS;
   break;
  case 129:
   if (!sb->s_qcop->set_dqblk)
    return -ENOSYS;
   break;
  case 133:
   if (!sb->s_qcop->get_dqblk)
    return -ENOSYS;
   break;
  case 128:
   if (sb && !sb->s_qcop->quota_sync)
    return -ENOSYS;
   break;
  default:
   return -EINVAL;
 }


 switch (cmd) {
  case 135:
  case 134:
  case 130:
  case 129:
  case 133:


   if (!sb_has_quota_active(sb, type))
    return -ESRCH;
 }


 if (cmd == 133) {
  if (((type == USRQUOTA && current_euid() != id) ||
       (type == GRPQUOTA && !in_egroup_p(id))) &&
      !capable(CAP_SYS_ADMIN))
   return -EPERM;
 }
 else if (cmd != 135 && cmd != 128 && cmd != 134)
  if (!capable(CAP_SYS_ADMIN))
   return -EPERM;

 return 0;
}
