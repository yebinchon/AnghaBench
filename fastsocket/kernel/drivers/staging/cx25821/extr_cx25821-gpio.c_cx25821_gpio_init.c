
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cx25821_dev {int board; } ;



 int cx25821_set_gpiopin_logicvalue (struct cx25821_dev*,int,int) ;
 int mdelay (int) ;

void cx25821_gpio_init(struct cx25821_dev *dev)
{
 if (dev == ((void*)0)) {
  return;
 }

 switch (dev->board) {
 case 128:
 default:

  cx25821_set_gpiopin_logicvalue(dev, 5, 1);
  mdelay(20);
  break;
 }

}
