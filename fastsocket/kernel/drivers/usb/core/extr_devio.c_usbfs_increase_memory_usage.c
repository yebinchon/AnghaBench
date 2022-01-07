
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int ACCESS_ONCE (int ) ;
 int ENOMEM ;
 int USBFS_XFER_MAX ;
 int atomic_add (unsigned int,int *) ;
 unsigned int atomic_read (int *) ;
 int atomic_sub (unsigned int,int *) ;
 int usbfs_memory_mb ;
 int usbfs_memory_usage ;

__attribute__((used)) static int usbfs_increase_memory_usage(unsigned amount)
{
 unsigned lim;





 lim = ACCESS_ONCE(usbfs_memory_mb);
 if (lim == 0 || lim > (USBFS_XFER_MAX >> 20))
  lim = USBFS_XFER_MAX;
 else
  lim <<= 20;

 atomic_add(amount, &usbfs_memory_usage);
 if (atomic_read(&usbfs_memory_usage) <= lim)
  return 0;
 atomic_sub(amount, &usbfs_memory_usage);
 return -ENOMEM;
}
