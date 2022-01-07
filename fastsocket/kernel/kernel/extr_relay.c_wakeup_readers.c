
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rchan_buf {int read_wait; } ;


 int wake_up_interruptible (int *) ;

__attribute__((used)) static void wakeup_readers(unsigned long data)
{
 struct rchan_buf *buf = (struct rchan_buf *)data;
 wake_up_interruptible(&buf->read_wait);
}
