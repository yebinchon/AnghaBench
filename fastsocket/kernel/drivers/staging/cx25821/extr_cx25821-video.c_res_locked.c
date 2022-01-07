
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cx25821_dev {unsigned int resources; } ;



int res_locked(struct cx25821_dev *dev, unsigned int bit)
{
 return dev->resources & bit;
}
