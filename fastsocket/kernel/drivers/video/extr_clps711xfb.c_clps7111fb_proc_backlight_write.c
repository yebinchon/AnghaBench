
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;


 unsigned char EDB_PD3_LCDBL ;
 int EFAULT ;
 int EINVAL ;
 int PDDR ;
 unsigned char clps_readb (int ) ;
 int clps_writeb (unsigned char,int ) ;
 scalar_t__ copy_from_user (unsigned char*,char const*,int) ;
 scalar_t__ machine_is_edb7211 () ;

__attribute__((used)) static int
clps7111fb_proc_backlight_write(struct file *file, const char *buffer,
  unsigned long count, void *data)
{
 unsigned char char_value;
 int value;

 if (count < 1) {
  return -EINVAL;
 }

 if (copy_from_user(&char_value, buffer, 1))
  return -EFAULT;

 value = char_value - '0';

 if (machine_is_edb7211()) {
  unsigned char port_d;

  port_d = clps_readb(PDDR);

  if (value) {
   port_d |= EDB_PD3_LCDBL;
  } else {
   port_d &= ~EDB_PD3_LCDBL;
  }

  clps_writeb(port_d, PDDR);
 }

 return count;
}
