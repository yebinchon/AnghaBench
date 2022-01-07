
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct wdm_device {TYPE_1__* intf; int flags; int count; int plock; } ;
struct inode {int dummy; } ;
struct file {struct wdm_device* private_data; } ;
struct TYPE_2__ {scalar_t__ needs_remote_wakeup; int dev; } ;


 int WDM_DISCONNECTING ;
 int dev_dbg (int *,char*) ;
 int kill_urbs (struct wdm_device*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int test_bit (int ,int *) ;
 int wdm_mutex ;

__attribute__((used)) static int wdm_release(struct inode *inode, struct file *file)
{
 struct wdm_device *desc = file->private_data;

 mutex_lock(&wdm_mutex);
 mutex_lock(&desc->plock);
 desc->count--;
 mutex_unlock(&desc->plock);

 if (!desc->count) {
  dev_dbg(&desc->intf->dev, "wdm_release: cleanup");
  kill_urbs(desc);
  if (!test_bit(WDM_DISCONNECTING, &desc->flags))
   desc->intf->needs_remote_wakeup = 0;
 }
 mutex_unlock(&wdm_mutex);
 return 0;
}
