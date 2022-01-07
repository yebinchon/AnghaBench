
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ ssize_t ;
typedef int loff_t ;
struct TYPE_2__ {size_t size_buf; int kern_buf; int resource; } ;


 scalar_t__ EINVAL ;
 scalar_t__ __copy_from_user (int ,char const*,unsigned long) ;
 TYPE_1__* image ;
 int printk (char*) ;
 scalar_t__ vme_master_write (int ,int ,scalar_t__,int ) ;

__attribute__((used)) static ssize_t resource_from_user(unsigned int minor, const char *buf,
 size_t count, loff_t *ppos)
{
 ssize_t retval;
 ssize_t copied = 0;

 if (count <= image[minor].size_buf) {
  retval = __copy_from_user(image[minor].kern_buf, buf,
   (unsigned long)count);
  if (retval != 0)
   copied = (copied - retval);
  else
   copied = count;

  copied = vme_master_write(image[minor].resource,
   image[minor].kern_buf, copied, *ppos);
 } else {

  printk("Currently don't support large transfers\n");



  return -EINVAL;
 }

 return copied;
}
