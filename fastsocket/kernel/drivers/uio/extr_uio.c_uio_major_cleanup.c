
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int uio_major ;
 int unregister_chrdev (int ,char*) ;

__attribute__((used)) static void uio_major_cleanup(void)
{
 unregister_chrdev(uio_major, "uio");
}
