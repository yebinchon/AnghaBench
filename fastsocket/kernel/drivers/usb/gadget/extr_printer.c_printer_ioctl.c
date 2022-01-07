
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct printer_dev {int lock; scalar_t__ printer_status; } ;
struct file {struct printer_dev* private_data; } ;


 int DBG (struct printer_dev*,char*,unsigned int,...) ;
 int ENOTTY ;


 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static long
printer_ioctl(struct file *fd, unsigned int code, unsigned long arg)
{
 struct printer_dev *dev = fd->private_data;
 unsigned long flags;
 int status = 0;

 DBG(dev, "printer_ioctl: cmd=0x%4.4x, arg=%lu\n", code, arg);



 spin_lock_irqsave(&dev->lock, flags);

 switch (code) {
 case 129:
  status = (int)dev->printer_status;
  break;
 case 128:
  dev->printer_status = (u8)arg;
  break;
 default:

  DBG(dev, "printer_ioctl: ERROR cmd=0x%4.4xis not supported\n",
    code);
  status = -ENOTTY;
 }

 spin_unlock_irqrestore(&dev->lock, flags);

 return status;
}
