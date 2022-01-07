
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* controller; } ;
struct usb_hcd {TYPE_2__ self; } ;
struct s3c2410_hcd_info {int dummy; } ;
struct TYPE_3__ {struct s3c2410_hcd_info* platform_data; } ;



__attribute__((used)) static struct s3c2410_hcd_info *to_s3c2410_info(struct usb_hcd *hcd)
{
 return hcd->self.controller->platform_data;
}
