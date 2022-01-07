
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct fb_cmap_user {scalar_t__ start; int len; scalar_t__ transp; scalar_t__ blue; scalar_t__ green; scalar_t__ red; } ;
struct fb_cmap {scalar_t__ start; int len; scalar_t__ transp; scalar_t__ blue; scalar_t__ green; scalar_t__ red; } ;


 int EFAULT ;
 int EINVAL ;
 scalar_t__ copy_to_user (scalar_t__,scalar_t__,int) ;

int fb_cmap_to_user(const struct fb_cmap *from, struct fb_cmap_user *to)
{
 int tooff = 0, fromoff = 0;
 int size;

 if (to->start > from->start)
  fromoff = to->start - from->start;
 else
  tooff = from->start - to->start;
 size = to->len - tooff;
 if (size > (int) (from->len - fromoff))
  size = from->len - fromoff;
 if (size <= 0)
  return -EINVAL;
 size *= sizeof(u16);

 if (copy_to_user(to->red+tooff, from->red+fromoff, size))
  return -EFAULT;
 if (copy_to_user(to->green+tooff, from->green+fromoff, size))
  return -EFAULT;
 if (copy_to_user(to->blue+tooff, from->blue+fromoff, size))
  return -EFAULT;
 if (from->transp && to->transp)
  if (copy_to_user(to->transp+tooff, from->transp+fromoff, size))
   return -EFAULT;
 return 0;
}
