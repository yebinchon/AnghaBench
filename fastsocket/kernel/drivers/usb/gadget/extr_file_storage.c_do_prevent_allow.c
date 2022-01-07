
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lun {int prevent_medium_removal; int sense_data; } ;
struct fsg_dev {int* cmnd; struct lun* curlun; } ;
struct TYPE_2__ {int removable; } ;


 int EINVAL ;
 int SS_INVALID_COMMAND ;
 int SS_INVALID_FIELD_IN_CDB ;
 int fsync_sub (struct lun*) ;
 TYPE_1__ mod_data ;

__attribute__((used)) static int do_prevent_allow(struct fsg_dev *fsg)
{
 struct lun *curlun = fsg->curlun;
 int prevent;

 if (!mod_data.removable) {
  curlun->sense_data = SS_INVALID_COMMAND;
  return -EINVAL;
 }

 prevent = fsg->cmnd[4] & 0x01;
 if ((fsg->cmnd[4] & ~0x01) != 0) {
  curlun->sense_data = SS_INVALID_FIELD_IN_CDB;
  return -EINVAL;
 }

 if (curlun->prevent_medium_removal && !prevent)
  fsync_sub(curlun);
 curlun->prevent_medium_removal = prevent;
 return 0;
}
