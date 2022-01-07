
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int UICR0 ;
 int UICR1 ;

__attribute__((used)) static void pio_irq_enable(int bEndpointAddress)
{
        bEndpointAddress &= 0xf;
        if (bEndpointAddress < 8)
                UICR0 &= ~(1 << bEndpointAddress);
        else {
                bEndpointAddress -= 8;
                UICR1 &= ~(1 << bEndpointAddress);
 }
}
