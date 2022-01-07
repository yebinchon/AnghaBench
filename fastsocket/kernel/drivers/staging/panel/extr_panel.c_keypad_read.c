
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int f_flags; } ;
typedef int ssize_t ;
typedef unsigned int loff_t ;


 int EAGAIN ;
 int EINTR ;
 size_t KEYPAD_BUFFER ;
 int O_NONBLOCK ;
 int current ;
 int interruptible_sleep_on (int *) ;
 int * keypad_buffer ;
 scalar_t__ keypad_buflen ;
 int keypad_read_wait ;
 size_t keypad_start ;
 int put_user (int ,char*) ;
 scalar_t__ signal_pending (int ) ;

__attribute__((used)) static ssize_t keypad_read(struct file *file,
      char *buf, size_t count, loff_t *ppos)
{

 unsigned i = *ppos;
 char *tmp = buf;

 if (keypad_buflen == 0) {
  if (file->f_flags & O_NONBLOCK)
   return -EAGAIN;

  interruptible_sleep_on(&keypad_read_wait);
  if (signal_pending(current))
   return -EINTR;
 }

 for (; count-- > 0 && (keypad_buflen > 0); ++i, ++tmp, --keypad_buflen) {
  put_user(keypad_buffer[keypad_start], tmp);
  keypad_start = (keypad_start + 1) % KEYPAD_BUFFER;
 }
 *ppos = i;

 return tmp - buf;
}
