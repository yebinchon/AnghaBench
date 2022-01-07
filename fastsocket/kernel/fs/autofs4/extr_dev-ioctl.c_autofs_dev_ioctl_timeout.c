
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct file {int dummy; } ;
struct autofs_sb_info {unsigned long exp_timeout; } ;
struct TYPE_2__ {unsigned long timeout; } ;
struct autofs_dev_ioctl {TYPE_1__ timeout; } ;


 unsigned long HZ ;

__attribute__((used)) static int autofs_dev_ioctl_timeout(struct file *fp,
        struct autofs_sb_info *sbi,
        struct autofs_dev_ioctl *param)
{
 unsigned long timeout;

 timeout = param->timeout.timeout;
 param->timeout.timeout = sbi->exp_timeout / HZ;
 sbi->exp_timeout = timeout * HZ;
 return 0;
}
