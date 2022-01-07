
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ ok; } ;
struct usb_line6_variax {TYPE_1__ dumpreq; int line6; } ;


 int line6_dump_request_async (TYPE_1__*,int *,int ) ;
 int line6_startup_delayed (TYPE_1__*,int,void (*) (unsigned long),struct usb_line6_variax*) ;

__attribute__((used)) static void variax_startup_timeout(unsigned long arg)
{
 struct usb_line6_variax *variax = (struct usb_line6_variax *)arg;

 if (variax->dumpreq.ok)
  return;

 line6_dump_request_async(&variax->dumpreq, &variax->line6, 0);
 line6_startup_delayed(&variax->dumpreq, 1, variax_startup_timeout,
         variax);
}
