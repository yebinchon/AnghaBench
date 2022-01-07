
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;


 int ppp_gidle (unsigned int,unsigned int,unsigned long) ;
 int ppp_scompress (unsigned int,unsigned int,unsigned long) ;
 int printk (char*,int,unsigned int,unsigned int) ;

__attribute__((used)) static int ppp_ioctl_trans(unsigned int fd, unsigned int cmd, unsigned long arg)
{
 int err;

 switch (cmd) {
 case 129:
  err = ppp_gidle(fd, cmd, arg);
  break;

 case 128:
  err = ppp_scompress(fd, cmd, arg);
  break;

 default:
  do {
   static int count;
   if (++count <= 20)
    printk("ppp_ioctl: Unknown cmd fd(%d) "
           "cmd(%08x) arg(%08x)\n",
           (int)fd, (unsigned int)cmd, (unsigned int)arg);
  } while(0);
  err = -EINVAL;
  break;
 };

 return err;
}
