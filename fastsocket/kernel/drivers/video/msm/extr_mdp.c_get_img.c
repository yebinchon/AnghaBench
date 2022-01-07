
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mdp_img {int memory_id; } ;
struct file {TYPE_1__* f_dentry; } ;
struct TYPE_5__ {unsigned long smem_start; unsigned long smem_len; } ;
struct fb_info {TYPE_2__ fix; } ;
struct TYPE_6__ {int i_rdev; } ;
struct TYPE_4__ {TYPE_3__* d_inode; } ;


 scalar_t__ FB_MAJOR ;
 scalar_t__ MAJOR (int ) ;
 struct file* fget_light (int ,int*) ;
 int fput_light (struct file*,int) ;

int get_img(struct mdp_img *img, struct fb_info *info,
     unsigned long *start, unsigned long *len,
     struct file **filep)
{
 int put_needed, ret = 0;
 struct file *file;
 unsigned long vstart;

 file = fget_light(img->memory_id, &put_needed);
 if (file == ((void*)0))
  return -1;

 if (MAJOR(file->f_dentry->d_inode->i_rdev) == FB_MAJOR) {
  *start = info->fix.smem_start;
  *len = info->fix.smem_len;
 } else
  ret = -1;
 fput_light(file, put_needed);

 return ret;
}
