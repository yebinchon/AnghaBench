
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atomic_sub (unsigned int,int *) ;
 int usbfs_memory_usage ;

__attribute__((used)) static void usbfs_decrease_memory_usage(unsigned amount)
{
 atomic_sub(amount, &usbfs_memory_usage);
}
