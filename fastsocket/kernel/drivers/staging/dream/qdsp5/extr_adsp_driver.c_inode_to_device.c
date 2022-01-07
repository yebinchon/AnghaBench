
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inode {int i_rdev; } ;
struct adsp_device {scalar_t__ device; } ;


 unsigned int MINOR (int ) ;
 unsigned int adsp_device_count ;
 struct adsp_device* adsp_devices ;

__attribute__((used)) static struct adsp_device *inode_to_device(struct inode *inode)
{
 unsigned n = MINOR(inode->i_rdev);
 if (n < adsp_device_count) {
  if (adsp_devices[n].device)
   return adsp_devices + n;
 }
 return ((void*)0);
}
