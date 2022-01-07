
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gmidi_device {int dummy; } ;


 int gmidi_transmit (struct gmidi_device*,int *) ;

__attribute__((used)) static void gmidi_in_tasklet(unsigned long data)
{
 struct gmidi_device *dev = (struct gmidi_device *)data;

 gmidi_transmit(dev, ((void*)0));
}
