
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct s3c2410_hcd_info {int (* power_control ) (int,int) ;TYPE_1__* port; } ;
struct TYPE_2__ {int power; } ;


 int stub1 (int,int) ;

__attribute__((used)) static void s3c2410_usb_set_power(struct s3c2410_hcd_info *info,
      int port, int to)
{
 if (info == ((void*)0))
  return;

 if (info->power_control != ((void*)0)) {
  info->port[port-1].power = to;
  (info->power_control)(port-1, to);
 }
}
