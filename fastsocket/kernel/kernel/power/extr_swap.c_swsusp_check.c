
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int orig_sig; int sig; } ;


 int EINVAL ;
 int FMODE_READ ;
 int IS_ERR (int ) ;
 int PAGE_SIZE ;
 int PTR_ERR (int ) ;
 int SWSUSP_SIG ;
 int bio_read_page (int ,TYPE_1__*,int *) ;
 int bio_write_page (int ,TYPE_1__*,int *) ;
 int blkdev_put (int ,int ) ;
 int memcmp (int ,int ,int) ;
 int memcpy (int ,int ,int) ;
 int memset (TYPE_1__*,int ,int ) ;
 int open_by_devnum (int ,int ) ;
 int pr_debug (char*,...) ;
 int resume_bdev ;
 int set_blocksize (int ,int ) ;
 TYPE_1__* swsusp_header ;
 int swsusp_resume_block ;
 int swsusp_resume_device ;

int swsusp_check(void)
{
 int error;

 resume_bdev = open_by_devnum(swsusp_resume_device, FMODE_READ);
 if (!IS_ERR(resume_bdev)) {
  set_blocksize(resume_bdev, PAGE_SIZE);
  memset(swsusp_header, 0, PAGE_SIZE);
  error = bio_read_page(swsusp_resume_block,
     swsusp_header, ((void*)0));
  if (error)
   goto put;

  if (!memcmp(SWSUSP_SIG, swsusp_header->sig, 10)) {
   memcpy(swsusp_header->sig, swsusp_header->orig_sig, 10);

   error = bio_write_page(swsusp_resume_block,
      swsusp_header, ((void*)0));
  } else {
   error = -EINVAL;
  }

put:
  if (error)
   blkdev_put(resume_bdev, FMODE_READ);
  else
   pr_debug("PM: Signature found, resuming\n");
 } else {
  error = PTR_ERR(resume_bdev);
 }

 if (error)
  pr_debug("PM: Error %d checking image file\n", error);

 return error;
}
