
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pxafb_info {scalar_t__ state; unsigned long hsync_time; } ;
struct device {int dummy; } ;


 scalar_t__ C_ENABLE ;
 struct pxafb_info* dev_get_drvdata (struct device*) ;

unsigned long pxafb_get_hsync_time(struct device *dev)
{
 struct pxafb_info *fbi = dev_get_drvdata(dev);


 if (!fbi || (fbi->state != C_ENABLE))
  return 0;

 return fbi->hsync_time;
}
