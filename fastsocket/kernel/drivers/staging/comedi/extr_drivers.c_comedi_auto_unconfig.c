
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int BUG_ON (int) ;
 unsigned int COMEDI_NUM_BOARD_MINORS ;
 int comedi_free_board_minor (unsigned int) ;
 scalar_t__ dev_get_drvdata (struct device*) ;
 int dev_set_drvdata (struct device*,int *) ;
 int kfree (unsigned int*) ;

void comedi_auto_unconfig(struct device *hardware_device)
{
 unsigned *minor = (unsigned *)dev_get_drvdata(hardware_device);
 if (minor == ((void*)0))
  return;

 BUG_ON(*minor >= COMEDI_NUM_BOARD_MINORS);

 comedi_free_board_minor(*minor);
 dev_set_drvdata(hardware_device, ((void*)0));
 kfree(minor);
}
