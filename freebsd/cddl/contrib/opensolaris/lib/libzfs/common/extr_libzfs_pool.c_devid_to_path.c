
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int devname; } ;
typedef TYPE_1__ devid_nmlist_t ;
typedef int ddi_devid_t ;


 int devid_deviceid_to_nmlist (char*,int ,char*,TYPE_1__**) ;
 int devid_free (int ) ;
 int devid_free_nmlist (TYPE_1__*) ;
 scalar_t__ devid_str_decode (char*,int *,char**) ;
 int devid_str_free (char*) ;
 char* strdup (int ) ;

__attribute__((used)) static char *
devid_to_path(char *devid_str)
{
 ddi_devid_t devid;
 char *minor;
 char *path;
 devid_nmlist_t *list = ((void*)0);
 int ret;

 if (devid_str_decode(devid_str, &devid, &minor) != 0)
  return (((void*)0));

 ret = devid_deviceid_to_nmlist("/dev", devid, minor, &list);

 devid_str_free(minor);
 devid_free(devid);

 if (ret != 0)
  return (((void*)0));




 path = strdup(list[0].devname);

 devid_free_nmlist(list);

 return (path);
}
