
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * swbuf; int queue; } ;
typedef TYPE_1__ vwsnd_port_t ;
struct TYPE_5__ {TYPE_1__ wport; TYPE_1__ rport; } ;
typedef TYPE_2__ vwsnd_dev_t ;
struct poll_table_struct {int dummy; } ;
struct file {int f_mode; scalar_t__ private_data; } ;


 int ASSERT (int) ;
 int DBGEV (char*,struct file*,struct poll_table_struct*) ;
 int DBGPV (char*,unsigned int) ;
 int FMODE_READ ;
 int FMODE_WRITE ;
 unsigned int POLLIN ;
 unsigned int POLLOUT ;
 unsigned int POLLRDNORM ;
 unsigned int POLLWRNORM ;
 int poll_wait (struct file*,int *,struct poll_table_struct*) ;
 scalar_t__ swb_inc_u (TYPE_1__*,int ) ;

__attribute__((used)) static unsigned int vwsnd_audio_poll(struct file *file,
         struct poll_table_struct *wait)
{
 vwsnd_dev_t *devc = (vwsnd_dev_t *) file->private_data;
 vwsnd_port_t *rport = (file->f_mode & FMODE_READ) ?
  &devc->rport : ((void*)0);
 vwsnd_port_t *wport = (file->f_mode & FMODE_WRITE) ?
  &devc->wport : ((void*)0);
 unsigned int mask = 0;

 DBGEV("(file=0x%p, wait=0x%p)\n", file, wait);

 ASSERT(rport || wport);
 if (rport) {
  poll_wait(file, &rport->queue, wait);
  if (swb_inc_u(rport, 0))
   mask |= (POLLIN | POLLRDNORM);
 }
 if (wport) {
  poll_wait(file, &wport->queue, wait);
  if (wport->swbuf == ((void*)0) || swb_inc_u(wport, 0))
   mask |= (POLLOUT | POLLWRNORM);
 }

 DBGPV("returning 0x%x\n", mask);
 return mask;
}
