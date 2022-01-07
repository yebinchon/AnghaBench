
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int devid; } ;
typedef TYPE_1__ ddi_devid_t ;


 char* strdup (int ) ;

char *
devid_str_encode(ddi_devid_t devid, char *minor_name)
{

 return (strdup(devid.devid));
}
