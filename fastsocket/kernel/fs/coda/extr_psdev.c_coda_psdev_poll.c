
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct venus_comm {int vc_pending; int vc_waitq; } ;
struct file {scalar_t__ private_data; } ;
typedef int poll_table ;


 unsigned int POLLIN ;
 unsigned int POLLOUT ;
 unsigned int POLLRDNORM ;
 unsigned int POLLWRNORM ;
 int list_empty (int *) ;
 int poll_wait (struct file*,int *,int *) ;

__attribute__((used)) static unsigned int coda_psdev_poll(struct file *file, poll_table * wait)
{
        struct venus_comm *vcp = (struct venus_comm *) file->private_data;
 unsigned int mask = POLLOUT | POLLWRNORM;

 poll_wait(file, &vcp->vc_waitq, wait);
 if (!list_empty(&vcp->vc_pending))
                mask |= POLLIN | POLLRDNORM;

 return mask;
}
