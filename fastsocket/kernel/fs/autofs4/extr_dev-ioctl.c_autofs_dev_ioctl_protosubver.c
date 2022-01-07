
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct file {int dummy; } ;
struct autofs_sb_info {int sub_version; } ;
struct TYPE_2__ {int sub_version; } ;
struct autofs_dev_ioctl {TYPE_1__ protosubver; } ;



__attribute__((used)) static int autofs_dev_ioctl_protosubver(struct file *fp,
     struct autofs_sb_info *sbi,
     struct autofs_dev_ioctl *param)
{
 param->protosubver.sub_version = sbi->sub_version;
 return 0;
}
