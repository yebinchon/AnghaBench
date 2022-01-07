
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct musb {int dummy; } ;


 int WARN_ON (int) ;
 int davinci_source_power (struct musb*,int,int ) ;
 scalar_t__ is_peripheral_active (struct musb*) ;

__attribute__((used)) static void davinci_set_vbus(struct musb *musb, int is_on)
{
 WARN_ON(is_on && is_peripheral_active(musb));
 davinci_source_power(musb, is_on, 0);
}
