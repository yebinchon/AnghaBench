
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sep_device {unsigned long send_ct; unsigned long reply_ct; scalar_t__ shared_addr; } ;
struct file {struct sep_device* private_data; } ;
typedef int poll_table ;


 int HW_HOST_SEP_HOST_GPR2_REG_ADDR ;
 unsigned int POLLIN ;
 unsigned int POLLOUT ;
 unsigned int POLLRDNORM ;
 unsigned int POLLWRNORM ;
 scalar_t__ SEP_DRIVER_MESSAGE_SHARED_AREA_SIZE_IN_BYTES ;
 int dbg (char*) ;
 int edbg (char*,...) ;
 int poll_wait (struct file*,int *,int *) ;
 int sep_event ;
 unsigned long sep_read_reg (struct sep_device*,int ) ;

__attribute__((used)) static unsigned int sep_poll(struct file *filp, poll_table * wait)
{
 unsigned long count;
 unsigned int mask = 0;
 unsigned long retval = 0;
 struct sep_device *sep = filp->private_data;

 dbg("---------->SEP Driver poll: start\n");
 poll_wait(filp, &sep_event, wait);



 edbg("sep->send_ct is %lu\n", sep->send_ct);
 edbg("sep->reply_ct is %lu\n", sep->reply_ct);


 if (sep->send_ct == sep->reply_ct) {
  for (count = 0; count < 12 * 4; count += 4)
   edbg("Sep Mesg Word %lu of the message is %lu\n", count, *((unsigned long *) (sep->shared_addr + count)));

  for (count = 0; count < 10 * 4; count += 4)
   edbg("Debug Data Word %lu of the message is %lu\n", count, *((unsigned long *) (sep->shared_addr + 0x1800 + count)));

  retval = sep_read_reg(sep, HW_HOST_SEP_HOST_GPR2_REG_ADDR);
  edbg("retval is %lu\n", retval);

  if (retval >> 31) {
   edbg("SEP Driver: sep request in\n");

   mask |= POLLOUT | POLLWRNORM;
  } else {
   edbg("SEP Driver: sep reply in\n");
   mask |= POLLIN | POLLRDNORM;
  }
 }
 dbg("SEP Driver:<-------- poll exit\n");
 return mask;
}
