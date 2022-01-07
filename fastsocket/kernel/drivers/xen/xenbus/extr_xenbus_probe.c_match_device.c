
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenbus_device_id {char* devicetype; } ;
struct xenbus_device {int devicetype; } ;


 int strcmp (char*,int ) ;

__attribute__((used)) static const struct xenbus_device_id *
match_device(const struct xenbus_device_id *arr, struct xenbus_device *dev)
{
 for (; *arr->devicetype != '\0'; arr++) {
  if (!strcmp(arr->devicetype, dev->devicetype))
   return arr;
 }
 return ((void*)0);
}
