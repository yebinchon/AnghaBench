
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ register_chrdev (int ,char*,int *) ;
 int uio_fops ;
 scalar_t__ uio_major ;

__attribute__((used)) static int uio_major_init(void)
{
 uio_major = register_chrdev(0, "uio", &uio_fops);
 if (uio_major < 0)
  return uio_major;
 return 0;
}
