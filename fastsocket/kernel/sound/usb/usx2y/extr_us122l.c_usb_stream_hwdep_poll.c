
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct usb_stream {scalar_t__ state; unsigned int periods_polled; unsigned int periods_done; } ;
struct TYPE_2__ {struct usb_stream* s; int sleep; } ;
struct us122l {unsigned int second_periods_polled; int mutex; struct file* first; TYPE_1__ sk; } ;
struct snd_hwdep {struct us122l* private_data; } ;
struct file {int dummy; } ;
typedef int poll_table ;


 unsigned int POLLERR ;
 unsigned int POLLIN ;
 unsigned int POLLOUT ;
 unsigned int POLLWRNORM ;
 scalar_t__ mutex_trylock (int *) ;
 int mutex_unlock (int *) ;
 int poll_wait (struct file*,int *,int *) ;
 scalar_t__ usb_stream_ready ;

__attribute__((used)) static unsigned int usb_stream_hwdep_poll(struct snd_hwdep *hw,
       struct file *file, poll_table *wait)
{
 struct us122l *us122l = hw->private_data;
 unsigned *polled;
 unsigned int mask;

 poll_wait(file, &us122l->sk.sleep, wait);

 mask = POLLIN | POLLOUT | POLLWRNORM | POLLERR;
 if (mutex_trylock(&us122l->mutex)) {
  struct usb_stream *s = us122l->sk.s;
  if (s && s->state == usb_stream_ready) {
   if (us122l->first == file)
    polled = &s->periods_polled;
   else
    polled = &us122l->second_periods_polled;
   if (*polled != s->periods_done) {
    *polled = s->periods_done;
    mask = POLLIN | POLLOUT | POLLWRNORM;
   } else
    mask = 0;
  }
  mutex_unlock(&us122l->mutex);
 }
 return mask;
}
