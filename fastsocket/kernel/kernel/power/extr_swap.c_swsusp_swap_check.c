
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FMODE_WRITE ;
 int PAGE_SIZE ;
 int blkdev_get (int ,int ) ;
 int blkdev_put (int ,int ) ;
 int resume_bdev ;
 int root_swap ;
 int set_blocksize (int ,int ) ;
 int swap_type_of (int ,int ,int *) ;
 int swsusp_resume_block ;
 int swsusp_resume_device ;

__attribute__((used)) static int swsusp_swap_check(void)
{
 int res;

 res = swap_type_of(swsusp_resume_device, swsusp_resume_block,
   &resume_bdev);
 if (res < 0)
  return res;

 root_swap = res;
 res = blkdev_get(resume_bdev, FMODE_WRITE);
 if (res)
  return res;

 res = set_blocksize(resume_bdev, PAGE_SIZE);
 if (res < 0)
  blkdev_put(resume_bdev, FMODE_WRITE);

 return res;
}
