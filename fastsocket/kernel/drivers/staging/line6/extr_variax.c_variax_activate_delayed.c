
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long data; int function; scalar_t__ expires; } ;
struct usb_line6_variax {TYPE_1__ activate_timer; } ;


 int HZ ;
 int add_timer (TYPE_1__*) ;
 scalar_t__ jiffies ;
 int variax_activate_timeout ;

__attribute__((used)) static void variax_activate_delayed(struct usb_line6_variax *variax,
        int seconds)
{
 variax->activate_timer.expires = jiffies + seconds * HZ;
 variax->activate_timer.function = variax_activate_timeout;
 variax->activate_timer.data = (unsigned long)variax;
 add_timer(&variax->activate_timer);
}
