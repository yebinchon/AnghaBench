
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct comedi_driver {struct comedi_driver* next; } ;


 struct comedi_driver* comedi_drivers ;

int comedi_driver_register(struct comedi_driver *driver)
{
 driver->next = comedi_drivers;
 comedi_drivers = driver;

 return 0;
}
