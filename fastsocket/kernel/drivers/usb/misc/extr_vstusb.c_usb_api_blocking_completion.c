
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct urb {struct completion* context; } ;
struct completion {int dummy; } ;


 int complete (struct completion*) ;

__attribute__((used)) static void usb_api_blocking_completion(struct urb *urb)
{
 struct completion *completeit = urb->context;

 complete(completeit);
}
