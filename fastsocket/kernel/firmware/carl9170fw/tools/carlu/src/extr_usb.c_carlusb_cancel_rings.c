
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct carlu {int rx_interrupt; int * rx_ring; } ;


 unsigned int ARRAY_SIZE (int *) ;
 int libusb_cancel_transfer (int ) ;

__attribute__((used)) static void carlusb_cancel_rings(struct carlu *ar)
{
 unsigned int i;

 for (i = 0; i < ARRAY_SIZE(ar->rx_ring); i++)
  libusb_cancel_transfer(ar->rx_ring[i]);

 libusb_cancel_transfer(ar->rx_interrupt);
}
