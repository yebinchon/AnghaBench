
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum xenbus_state { ____Placeholder_xenbus_state } xenbus_state ;


 int XBT_NIL ;
 int XenbusStateUnknown ;
 int xenbus_gather (int ,char const*,char*,char*,int*,int *) ;

enum xenbus_state xenbus_read_driver_state(const char *path)
{
 enum xenbus_state result;
 int err = xenbus_gather(XBT_NIL, path, "state", "%d", &result, ((void*)0));
 if (err)
  result = XenbusStateUnknown;

 return result;
}
