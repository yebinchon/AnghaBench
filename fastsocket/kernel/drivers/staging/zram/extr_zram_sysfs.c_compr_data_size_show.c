
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int compr_size; } ;
struct zram {TYPE_1__ stats; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
typedef int ssize_t ;


 struct zram* dev_to_zram (struct device*) ;
 int sprintf (char*,char*,int ) ;
 int zram_stat64_read (struct zram*,int *) ;

__attribute__((used)) static ssize_t compr_data_size_show(struct device *dev,
  struct device_attribute *attr, char *buf)
{
 struct zram *zram = dev_to_zram(dev);

 return sprintf(buf, "%llu\n",
  zram_stat64_read(zram, &zram->stats.compr_size));
}
