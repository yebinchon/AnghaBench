
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pxa25x_udc {int ep0state; } ;


 int EP0_IDLE ;

__attribute__((used)) static inline void ep0_idle (struct pxa25x_udc *dev)
{
 dev->ep0state = EP0_IDLE;
}
