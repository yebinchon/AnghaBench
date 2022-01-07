
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
typedef int poll_table ;


 scalar_t__ DATA_AVAIL (int ) ;
 unsigned int POLLIN ;
 unsigned int POLLOUT ;
 unsigned int POLLRDNORM ;
 unsigned int POLLWRNORM ;
 int SPACE_AVAIL (int ) ;
 int * input_sleeper ;
 int * midi_in_buf ;
 int * midi_out_buf ;
 int * midi_sleeper ;
 int poll_wait (struct file*,int *,int *) ;

unsigned int MIDIbuf_poll(int dev, struct file *file, poll_table * wait)
{
 unsigned int mask = 0;

 dev = dev >> 4;


 poll_wait(file, &input_sleeper[dev], wait);
 if (DATA_AVAIL(midi_in_buf[dev]))
  mask |= POLLIN | POLLRDNORM;


 poll_wait(file, &midi_sleeper[dev], wait);
 if (!SPACE_AVAIL(midi_out_buf[dev]))
  mask |= POLLOUT | POLLWRNORM;

 return mask;
}
