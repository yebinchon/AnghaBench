
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {int i_rdev; } ;
struct file {int f_flags; int f_mode; struct au1550_state* private_data; } ;
struct TYPE_4__ {int num_channels; int sample_size; scalar_t__ total_bytes; scalar_t__ subdivision; scalar_t__ ossmaxfrags; scalar_t__ ossfragshift; } ;
struct TYPE_3__ {int num_channels; int sample_size; scalar_t__ total_bytes; scalar_t__ subdivision; scalar_t__ ossmaxfrags; scalar_t__ ossfragshift; } ;
struct au1550_state {int open_mode; int sem; int open_mutex; TYPE_2__ dma_dac; TYPE_1__ dma_adc; int open_wait; } ;


 int DECLARE_WAITQUEUE (int ,int ) ;
 int EBUSY ;
 int ERESTARTSYS ;
 int FMODE_READ ;
 int FMODE_WRITE ;
 int MINOR (int ) ;
 int O_NONBLOCK ;
 int SND_DEV_DSP16 ;
 int TASK_INTERRUPTIBLE ;
 int TASK_RUNNING ;
 int __set_current_state (int ) ;
 int add_wait_queue (int *,int *) ;
 struct au1550_state au1550_state ;
 int current ;
 int mutex_init (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_debug (char*) ;
 int prog_dmabuf_adc (struct au1550_state*) ;
 int prog_dmabuf_dac (struct au1550_state*) ;
 int remove_wait_queue (int *,int *) ;
 int schedule () ;
 int set_adc_rate (struct au1550_state*,int) ;
 int set_current_state (int ) ;
 int set_dac_rate (struct au1550_state*,int) ;
 scalar_t__ signal_pending (int ) ;
 int stop_adc (struct au1550_state*) ;
 int stop_dac (struct au1550_state*) ;
 int wait ;

__attribute__((used)) static int
au1550_open(struct inode *inode, struct file *file)
{
 int minor = MINOR(inode->i_rdev);
 DECLARE_WAITQUEUE(wait, current);
 struct au1550_state *s = &au1550_state;
 int ret;
 file->private_data = s;

 mutex_lock(&s->open_mutex);
 while (s->open_mode & file->f_mode) {
  if (file->f_flags & O_NONBLOCK) {
   mutex_unlock(&s->open_mutex);
   return -EBUSY;
  }
  add_wait_queue(&s->open_wait, &wait);
  __set_current_state(TASK_INTERRUPTIBLE);
  mutex_unlock(&s->open_mutex);
  schedule();
  remove_wait_queue(&s->open_wait, &wait);
  set_current_state(TASK_RUNNING);
  if (signal_pending(current))
   return -ERESTARTSYS;
  mutex_lock(&s->open_mutex);
 }

 stop_dac(s);
 stop_adc(s);

 if (file->f_mode & FMODE_READ) {
  s->dma_adc.ossfragshift = s->dma_adc.ossmaxfrags =
   s->dma_adc.subdivision = s->dma_adc.total_bytes = 0;
  s->dma_adc.num_channels = 1;
  s->dma_adc.sample_size = 8;
  set_adc_rate(s, 8000);
  if ((minor & 0xf) == SND_DEV_DSP16)
   s->dma_adc.sample_size = 16;
 }

 if (file->f_mode & FMODE_WRITE) {
  s->dma_dac.ossfragshift = s->dma_dac.ossmaxfrags =
   s->dma_dac.subdivision = s->dma_dac.total_bytes = 0;
  s->dma_dac.num_channels = 1;
  s->dma_dac.sample_size = 8;
  set_dac_rate(s, 8000);
  if ((minor & 0xf) == SND_DEV_DSP16)
   s->dma_dac.sample_size = 16;
 }

 if (file->f_mode & FMODE_READ) {
  if ((ret = prog_dmabuf_adc(s)))
   return ret;
 }
 if (file->f_mode & FMODE_WRITE) {
  if ((ret = prog_dmabuf_dac(s)))
   return ret;
 }

 s->open_mode |= file->f_mode & (FMODE_READ | FMODE_WRITE);
 mutex_unlock(&s->open_mutex);
 mutex_init(&s->sem);
 return 0;
}
