
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {TYPE_1__* s_qcop; } ;
struct TYPE_2__ {int (* quota_on ) (struct super_block*,int,int ,int *,int) ;} ;


 int ENOSYS ;
 int MAXQUOTAS ;
 int stub1 (struct super_block*,int,int ,int *,int) ;

int vfs_dq_quota_on_remount(struct super_block *sb)
{
 int cnt;
 int ret = 0, err;

 if (!sb->s_qcop || !sb->s_qcop->quota_on)
  return -ENOSYS;
 for (cnt = 0; cnt < MAXQUOTAS; cnt++) {
  err = sb->s_qcop->quota_on(sb, cnt, 0, ((void*)0), 1);
  if (err < 0 && !ret)
   ret = err;
 }
 return ret;
}
