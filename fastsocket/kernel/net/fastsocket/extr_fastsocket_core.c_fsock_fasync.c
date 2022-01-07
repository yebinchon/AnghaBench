
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;


 int DPRINTK (int ,char*) ;
 int EINVAL ;
 int INFO ;

__attribute__((used)) static int fsock_fasync(int fd, struct file *filp, int on)
{
 DPRINTK(INFO, "Do!\n");
 return -EINVAL;
}
