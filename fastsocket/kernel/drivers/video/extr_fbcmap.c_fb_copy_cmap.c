
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct fb_cmap {scalar_t__ start; int len; scalar_t__ transp; scalar_t__ blue; scalar_t__ green; scalar_t__ red; } ;


 int EINVAL ;
 int memcpy (scalar_t__,scalar_t__,int) ;

int fb_copy_cmap(const struct fb_cmap *from, struct fb_cmap *to)
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

 memcpy(to->red+tooff, from->red+fromoff, size);
 memcpy(to->green+tooff, from->green+fromoff, size);
 memcpy(to->blue+tooff, from->blue+fromoff, size);
 if (from->transp && to->transp)
  memcpy(to->transp+tooff, from->transp+fromoff, size);
 return 0;
}
