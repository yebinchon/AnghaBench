
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * pd ;
 int platform_device_unregister (int *) ;

void usb_nop_xceiv_unregister(void)
{
 platform_device_unregister(pd);
 pd = ((void*)0);
}
