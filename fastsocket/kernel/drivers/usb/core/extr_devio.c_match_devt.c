
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {scalar_t__ devt; } ;
typedef scalar_t__ dev_t ;



__attribute__((used)) static int match_devt(struct device *dev, void *data)
{
 return dev->devt == (dev_t) (unsigned long) data;
}
