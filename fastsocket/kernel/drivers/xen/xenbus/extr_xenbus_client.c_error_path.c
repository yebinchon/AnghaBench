
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xenbus_device {int nodename; } ;


 int GFP_KERNEL ;
 char* kasprintf (int ,char*,int ) ;

__attribute__((used)) static char *error_path(struct xenbus_device *dev)
{
 return kasprintf(GFP_KERNEL, "error/%s", dev->nodename);
}
