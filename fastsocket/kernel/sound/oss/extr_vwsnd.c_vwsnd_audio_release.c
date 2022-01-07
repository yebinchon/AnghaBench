
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {void* swstate; } ;
typedef TYPE_1__ vwsnd_port_t ;
struct TYPE_9__ {int open_mode; int open_wait; int open_mutex; int io_mutex; TYPE_1__ wport; TYPE_1__ rport; } ;
typedef TYPE_2__ vwsnd_dev_t ;
struct inode {int dummy; } ;
struct file {int f_mode; scalar_t__ private_data; } ;


 int DBGEV (char*,struct inode*,struct file*) ;
 int DBGR () ;
 int DEC_USE_COUNT ;
 int FMODE_READ ;
 int FMODE_WRITE ;
 void* SW_OFF ;
 int lock_kernel () ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pcm_flush_frag (TYPE_2__*) ;
 int pcm_shutdown (TYPE_2__*,TYPE_1__*,TYPE_1__*) ;
 int pcm_write_sync (TYPE_2__*) ;
 int unlock_kernel () ;
 int wake_up (int *) ;

__attribute__((used)) static int vwsnd_audio_release(struct inode *inode, struct file *file)
{
 vwsnd_dev_t *devc = (vwsnd_dev_t *) file->private_data;
 vwsnd_port_t *wport = ((void*)0), *rport = ((void*)0);
 int err = 0;

 lock_kernel();
 mutex_lock(&devc->io_mutex);
 {
  DBGEV("(inode=0x%p, file=0x%p)\n", inode, file);

  if (file->f_mode & FMODE_READ)
   rport = &devc->rport;
  if (file->f_mode & FMODE_WRITE) {
   wport = &devc->wport;
   pcm_flush_frag(devc);
   pcm_write_sync(devc);
  }
  pcm_shutdown(devc, rport, wport);
  if (rport)
   rport->swstate = SW_OFF;
  if (wport)
   wport->swstate = SW_OFF;
 }
 mutex_unlock(&devc->io_mutex);

 mutex_lock(&devc->open_mutex);
 {
  devc->open_mode &= ~file->f_mode;
 }
 mutex_unlock(&devc->open_mutex);
 wake_up(&devc->open_wait);
 DEC_USE_COUNT;
 DBGR();
 unlock_kernel();
 return err;
}
