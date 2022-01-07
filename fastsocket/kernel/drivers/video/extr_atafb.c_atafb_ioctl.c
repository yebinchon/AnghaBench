
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_info {int dummy; } ;
struct atafb_par {int dummy; } ;


 int EFAULT ;
 int EINVAL ;


 int ata_set_par (int *) ;
 int copy_from_user (void*,void*,int) ;
 int copy_to_user (void*,void*,int) ;
 int current_par ;

__attribute__((used)) static int
atafb_ioctl(struct fb_info *info, unsigned int cmd, unsigned long arg)
{
 switch (cmd) {

 case 129:
  if (copy_to_user((void *)arg, (void *)&current_par,
     sizeof(struct atafb_par)))
   return -EFAULT;
  return 0;


 case 128:
  if (copy_from_user((void *)&current_par, (void *)arg,
       sizeof(struct atafb_par)))
   return -EFAULT;
  ata_set_par(&current_par);
  return 0;

 }
 return -EINVAL;
}
