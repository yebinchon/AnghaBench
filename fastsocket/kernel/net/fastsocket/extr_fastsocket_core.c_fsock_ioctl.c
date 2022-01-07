
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;


 int DPRINTK (int ,char*) ;
 long EINVAL ;
 int INFO ;

__attribute__((used)) static long fsock_ioctl(struct file *file, unsigned cmd, unsigned long arg)
{
   DPRINTK(INFO, "Do!\n");
   return -EINVAL;
}
