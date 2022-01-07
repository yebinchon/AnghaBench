
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int dummy; } ;
struct file {int dummy; } ;


 int EBUSY ;
 int is_active ;
 int nonseekable_open (struct inode*,struct file*) ;
 scalar_t__ test_and_set_bit (int ,int *) ;
 int usb_pcwd_device ;
 int usb_pcwd_keepalive (int ) ;
 int usb_pcwd_start (int ) ;

__attribute__((used)) static int usb_pcwd_open(struct inode *inode, struct file *file)
{

 if (test_and_set_bit(0, &is_active))
  return -EBUSY;


 usb_pcwd_start(usb_pcwd_device);
 usb_pcwd_keepalive(usb_pcwd_device);
 return nonseekable_open(inode, file);
}
