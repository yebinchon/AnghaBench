
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct file {int dummy; } ;
struct autofs_sb_info {int dummy; } ;
struct TYPE_2__ {int status; scalar_t__ token; } ;
struct autofs_dev_ioctl {TYPE_1__ fail; } ;
typedef scalar_t__ autofs_wqt_t ;


 int ENOENT ;
 int autofs4_wait_release (struct autofs_sb_info*,scalar_t__,int) ;

__attribute__((used)) static int autofs_dev_ioctl_fail(struct file *fp,
     struct autofs_sb_info *sbi,
     struct autofs_dev_ioctl *param)
{
 autofs_wqt_t token;
 int status;

 token = (autofs_wqt_t) param->fail.token;
 status = param->fail.status ? param->fail.status : -ENOENT;
 return autofs4_wait_release(sbi, token, status);
}
