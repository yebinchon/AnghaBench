
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snapshot_handle {int dummy; } ;
struct snapshot_data {int swap; int mode; scalar_t__ platform_support; scalar_t__ ready; scalar_t__ frozen; int handle; } ;
struct inode {int dummy; } ;
struct file {int f_flags; struct snapshot_data* private_data; } ;


 int EBUSY ;
 int ENOMEM ;
 int ENOSYS ;
 int O_ACCMODE ;
 int O_RDONLY ;
 int O_RDWR ;
 int O_WRONLY ;
 int PM_HIBERNATION_PREPARE ;
 int PM_POST_HIBERNATION ;
 int PM_POST_RESTORE ;
 int PM_RESTORE_PREPARE ;
 int atomic_add_unless (int *,int,int ) ;
 int atomic_inc (int *) ;
 scalar_t__ create_basic_memory_bitmaps () ;
 int memset (int *,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int nonseekable_open (struct inode*,struct file*) ;
 int pm_mutex ;
 int pm_notifier_call_chain (int ) ;
 int snapshot_device_available ;
 struct snapshot_data snapshot_state ;
 int swap_type_of (scalar_t__,int ,int *) ;
 scalar_t__ swsusp_resume_device ;
 int wait_for_device_probe () ;

__attribute__((used)) static int snapshot_open(struct inode *inode, struct file *filp)
{
 struct snapshot_data *data;
 int error;

 mutex_lock(&pm_mutex);

 if (!atomic_add_unless(&snapshot_device_available, -1, 0)) {
  error = -EBUSY;
  goto Unlock;
 }

 if ((filp->f_flags & O_ACCMODE) == O_RDWR) {
  atomic_inc(&snapshot_device_available);
  error = -ENOSYS;
  goto Unlock;
 }
 if(create_basic_memory_bitmaps()) {
  atomic_inc(&snapshot_device_available);
  error = -ENOMEM;
  goto Unlock;
 }
 nonseekable_open(inode, filp);
 data = &snapshot_state;
 filp->private_data = data;
 memset(&data->handle, 0, sizeof(struct snapshot_handle));
 if ((filp->f_flags & O_ACCMODE) == O_RDONLY) {

  data->swap = swsusp_resume_device ?
   swap_type_of(swsusp_resume_device, 0, ((void*)0)) : -1;
  data->mode = O_RDONLY;
  error = pm_notifier_call_chain(PM_HIBERNATION_PREPARE);
  if (error)
   pm_notifier_call_chain(PM_POST_HIBERNATION);
 } else {




  wait_for_device_probe();

  data->swap = -1;
  data->mode = O_WRONLY;
  error = pm_notifier_call_chain(PM_RESTORE_PREPARE);
  if (error)
   pm_notifier_call_chain(PM_POST_RESTORE);
 }
 if (error)
  atomic_inc(&snapshot_device_available);
 data->frozen = 0;
 data->ready = 0;
 data->platform_support = 0;

 Unlock:
 mutex_unlock(&pm_mutex);

 return error;
}
