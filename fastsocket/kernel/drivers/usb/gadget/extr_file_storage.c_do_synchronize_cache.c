
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lun {int sense_data; } ;
struct fsg_dev {struct lun* curlun; } ;


 int SS_WRITE_ERROR ;
 int fsync_sub (struct lun*) ;

__attribute__((used)) static int do_synchronize_cache(struct fsg_dev *fsg)
{
 struct lun *curlun = fsg->curlun;
 int rc;



 rc = fsync_sub(curlun);
 if (rc)
  curlun->sense_data = SS_WRITE_ERROR;
 return 0;
}
