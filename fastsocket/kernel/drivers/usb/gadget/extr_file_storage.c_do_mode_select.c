
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lun {int sense_data; } ;
struct fsg_dev {struct lun* curlun; } ;
struct fsg_buffhd {int dummy; } ;


 int EINVAL ;
 int SS_INVALID_COMMAND ;

__attribute__((used)) static int do_mode_select(struct fsg_dev *fsg, struct fsg_buffhd *bh)
{
 struct lun *curlun = fsg->curlun;


 curlun->sense_data = SS_INVALID_COMMAND;
 return -EINVAL;
}
