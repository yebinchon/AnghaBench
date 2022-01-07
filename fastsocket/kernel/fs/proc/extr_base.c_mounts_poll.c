
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc_mounts {scalar_t__ event; struct mnt_namespace* ns; } ;
struct mnt_namespace {scalar_t__ event; int poll; } ;
struct file {struct proc_mounts* private_data; } ;
typedef int poll_table ;


 unsigned int POLLERR ;
 unsigned int POLLIN ;
 unsigned int POLLPRI ;
 unsigned int POLLRDNORM ;
 int poll_wait (struct file*,int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int vfsmount_lock ;

__attribute__((used)) static unsigned mounts_poll(struct file *file, poll_table *wait)
{
 struct proc_mounts *p = file->private_data;
 struct mnt_namespace *ns = p->ns;
 unsigned res = POLLIN | POLLRDNORM;

 poll_wait(file, &ns->poll, wait);

 spin_lock(&vfsmount_lock);
 if (p->event != ns->event) {
  p->event = ns->event;
  res |= POLLERR | POLLPRI;
 }
 spin_unlock(&vfsmount_lock);

 return res;
}
