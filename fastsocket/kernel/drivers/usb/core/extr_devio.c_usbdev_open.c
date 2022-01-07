
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct usb_device {scalar_t__ state; int dev; int filelist; TYPE_1__* usbfs_dentry; } ;
struct inode {struct usb_device* i_private; int i_rdev; } ;
struct file {struct dev_state* private_data; } ;
struct dev_state {int list; int secid; scalar_t__ ifclaimed; int * disccontext; int disc_euid; int disc_uid; int disc_pid; scalar_t__ discsignr; int wait; int async_completed; int async_pending; int lock; struct file* file; struct usb_device* dev; } ;
struct cred {int euid; int uid; } ;
struct TYPE_7__ {int comm; } ;
struct TYPE_6__ {struct inode* d_inode; } ;


 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ USB_DEVICE_MAJOR ;
 scalar_t__ USB_STATE_NOTATTACHED ;
 TYPE_2__* current ;
 struct cred* current_cred () ;
 int get_pid (int ) ;
 scalar_t__ imajor (struct inode*) ;
 int init_waitqueue_head (int *) ;
 int kfree (struct dev_state*) ;
 struct dev_state* kmalloc (int,int ) ;
 int list_add_tail (int *,int *) ;
 int lock_kernel () ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int security_task_getsecid (TYPE_2__*,int *) ;
 int smp_wmb () ;
 int snoop (int *,char*,int ,int ) ;
 int spin_lock_init (int *) ;
 int task_pid (TYPE_2__*) ;
 int task_pid_nr (TYPE_2__*) ;
 int unlock_kernel () ;
 int usb_autoresume_device (struct usb_device*) ;
 int usb_get_dev (struct usb_device*) ;
 int usb_put_dev (struct usb_device*) ;
 struct usb_device* usbdev_lookup_by_devt (int ) ;
 int usbfs_mutex ;

__attribute__((used)) static int usbdev_open(struct inode *inode, struct file *file)
{
 struct usb_device *dev = ((void*)0);
 struct dev_state *ps;
 const struct cred *cred = current_cred();
 int ret;

 lock_kernel();

 mutex_lock(&usbfs_mutex);

 ret = -ENOMEM;
 ps = kmalloc(sizeof(struct dev_state), GFP_KERNEL);
 if (!ps)
  goto out;

 ret = -ENODEV;


 if (imajor(inode) == USB_DEVICE_MAJOR)
  dev = usbdev_lookup_by_devt(inode->i_rdev);
 if (!dev || dev->state == USB_STATE_NOTATTACHED)
  goto out;
 ret = usb_autoresume_device(dev);
 if (ret)
  goto out;

 ret = 0;
 ps->dev = dev;
 ps->file = file;
 spin_lock_init(&ps->lock);
 INIT_LIST_HEAD(&ps->list);
 INIT_LIST_HEAD(&ps->async_pending);
 INIT_LIST_HEAD(&ps->async_completed);
 init_waitqueue_head(&ps->wait);
 ps->discsignr = 0;
 ps->disc_pid = get_pid(task_pid(current));
 ps->disc_uid = cred->uid;
 ps->disc_euid = cred->euid;
 ps->disccontext = ((void*)0);
 ps->ifclaimed = 0;
 security_task_getsecid(current, &ps->secid);
 smp_wmb();
 list_add_tail(&ps->list, &dev->filelist);
 file->private_data = ps;
 snoop(&dev->dev, "opened by process %d: %s\n", task_pid_nr(current),
   current->comm);
 out:
 if (ret) {
  kfree(ps);
  usb_put_dev(dev);
 }
 mutex_unlock(&usbfs_mutex);
 unlock_kernel();
 return ret;
}
