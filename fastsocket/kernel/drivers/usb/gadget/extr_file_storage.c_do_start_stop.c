
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lun {int sense_data; scalar_t__ prevent_medium_removal; } ;
struct fsg_dev {int* cmnd; int filesem; struct lun* curlun; } ;
struct TYPE_2__ {int removable; } ;


 int EINVAL ;
 int LDBG (struct lun*,char*) ;
 int SS_INVALID_COMMAND ;
 int SS_INVALID_FIELD_IN_CDB ;
 int SS_MEDIUM_NOT_PRESENT ;
 int SS_MEDIUM_REMOVAL_PREVENTED ;
 int backing_file_is_open (struct lun*) ;
 int close_backing_file (struct lun*) ;
 int down_read (int *) ;
 int down_write (int *) ;
 TYPE_1__ mod_data ;
 int up_read (int *) ;
 int up_write (int *) ;

__attribute__((used)) static int do_start_stop(struct fsg_dev *fsg)
{
 struct lun *curlun = fsg->curlun;
 int loej, start;

 if (!mod_data.removable) {
  curlun->sense_data = SS_INVALID_COMMAND;
  return -EINVAL;
 }


 loej = fsg->cmnd[4] & 0x02;
 start = fsg->cmnd[4] & 0x01;
 return 0;
}
