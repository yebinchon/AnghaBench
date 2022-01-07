
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int devt; } ;
typedef int mode_t ;


 int GFP_KERNEL ;
 scalar_t__ MAJOR (int ) ;
 scalar_t__ SOUND_MAJOR ;
 int dev_name (struct device*) ;
 char* kasprintf (int ,char*,int ) ;

__attribute__((used)) static char *sound_devnode(struct device *dev, mode_t *mode)
{
 if (MAJOR(dev->devt) == SOUND_MAJOR)
  return ((void*)0);
 return kasprintf(GFP_KERNEL, "snd/%s", dev_name(dev));
}
