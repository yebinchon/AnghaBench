
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fb_info {int class_flag; int dev; } ;


 int ARRAY_SIZE (int *) ;
 int FB_SYSFS_FLAG_ATTR ;
 int dev_set_drvdata (int ,struct fb_info*) ;
 int * device_attrs ;
 int device_create_file (int ,int *) ;
 int device_remove_file (int ,int *) ;

int fb_init_device(struct fb_info *fb_info)
{
 int i, error = 0;

 dev_set_drvdata(fb_info->dev, fb_info);

 fb_info->class_flag |= FB_SYSFS_FLAG_ATTR;

 for (i = 0; i < ARRAY_SIZE(device_attrs); i++) {
  error = device_create_file(fb_info->dev, &device_attrs[i]);

  if (error)
   break;
 }

 if (error) {
  while (--i >= 0)
   device_remove_file(fb_info->dev, &device_attrs[i]);
  fb_info->class_flag &= ~FB_SYSFS_FLAG_ATTR;
 }

 return 0;
}
