
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct TYPE_2__ {scalar_t__ pages_stored; } ;
struct zram {TYPE_1__ stats; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 int PAGE_SHIFT ;
 struct zram* dev_to_zram (struct device*) ;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static ssize_t orig_data_size_show(struct device *dev,
  struct device_attribute *attr, char *buf)
{
 struct zram *zram = dev_to_zram(dev);

 return sprintf(buf, "%llu\n",
  (u64)(zram->stats.pages_stored) << PAGE_SHIFT);
}
