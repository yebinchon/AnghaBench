
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ipx_interface {TYPE_1__* if_dev; scalar_t__ if_internal; } ;
struct TYPE_2__ {char const* name; } ;



const char *ipx_device_name(struct ipx_interface *intrfc)
{
 return intrfc->if_internal ? "Internal" :
  intrfc->if_dev ? intrfc->if_dev->name : "Unknown";
}
