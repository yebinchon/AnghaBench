
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tick_device {int dummy; } ;


 struct tick_device tick_broadcast_device ;

struct tick_device *tick_get_broadcast_device(void)
{
 return &tick_broadcast_device;
}
