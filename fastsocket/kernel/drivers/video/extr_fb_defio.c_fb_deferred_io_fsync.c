
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {struct fb_info* private_data; } ;
struct fb_info {int deferred_work; int fbdefio; } ;
struct dentry {int dummy; } ;


 int cancel_rearming_delayed_work (int *) ;
 int schedule_delayed_work (int *,int ) ;

int fb_deferred_io_fsync(struct file *file, struct dentry *dentry, int datasync)
{
 struct fb_info *info = file->private_data;


 if (!info->fbdefio)
  return 0;


 cancel_rearming_delayed_work(&info->deferred_work);


 return schedule_delayed_work(&info->deferred_work, 0);
}
