
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rfkill {int dev; } ;


 int put_device (int *) ;

void rfkill_destroy(struct rfkill *rfkill)
{
 if (rfkill)
  put_device(&rfkill->dev);
}
