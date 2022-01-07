
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {int dummy; } ;
struct file {int f_mode; int f_flags; scalar_t__ private_data; } ;
struct TYPE_4__ {int * rawbuf; } ;
struct TYPE_3__ {int * rawbuf; } ;
struct au1550_state {int open_mode; int open_wait; int open_mutex; TYPE_2__ dma_adc; TYPE_1__ dma_dac; } ;


 int FMODE_READ ;
 int FMODE_WRITE ;
 int O_NONBLOCK ;
 int drain_dac (struct au1550_state*,int) ;
 int kfree (int *) ;
 int lock_kernel () ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int stop_adc (struct au1550_state*) ;
 int stop_dac (struct au1550_state*) ;
 int unlock_kernel () ;
 int wake_up (int *) ;

__attribute__((used)) static int
au1550_release(struct inode *inode, struct file *file)
{
 struct au1550_state *s = (struct au1550_state *)file->private_data;

 lock_kernel();

 if (file->f_mode & FMODE_WRITE) {
  unlock_kernel();
  drain_dac(s, file->f_flags & O_NONBLOCK);
  lock_kernel();
 }

 mutex_lock(&s->open_mutex);
 if (file->f_mode & FMODE_WRITE) {
  stop_dac(s);
  kfree(s->dma_dac.rawbuf);
  s->dma_dac.rawbuf = ((void*)0);
 }
 if (file->f_mode & FMODE_READ) {
  stop_adc(s);
  kfree(s->dma_adc.rawbuf);
  s->dma_adc.rawbuf = ((void*)0);
 }
 s->open_mode &= ((~file->f_mode) & (FMODE_READ|FMODE_WRITE));
 mutex_unlock(&s->open_mutex);
 wake_up(&s->open_wait);
 unlock_kernel();
 return 0;
}
