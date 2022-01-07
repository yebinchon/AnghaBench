
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zram {int disk; } ;
struct device {int dummy; } ;


 struct zram* devices ;
 struct device* disk_to_dev (int ) ;
 int num_devices ;

__attribute__((used)) static struct zram *dev_to_zram(struct device *dev)
{
 int i;
 struct zram *zram = ((void*)0);

 for (i = 0; i < num_devices; i++) {
  zram = &devices[i];
  if (disk_to_dev(zram->disk) == dev)
   break;
 }

 return zram;
}
