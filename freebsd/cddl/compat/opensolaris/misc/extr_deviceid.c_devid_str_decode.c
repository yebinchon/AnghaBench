
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int devid; } ;
typedef TYPE_1__ ddi_devid_t ;


 int EINVAL ;
 int ENOMEM ;
 char* strdup (char*) ;
 int strlcpy (int ,char*,int) ;

int
devid_str_decode(char *devidstr, ddi_devid_t *retdevid, char **retminor_name)
{

 if (strlcpy(retdevid->devid, devidstr, sizeof(retdevid->devid)) >=
     sizeof(retdevid->devid)) {
  return (EINVAL);
 }
 *retminor_name = strdup("");
 if (*retminor_name == ((void*)0))
  return (ENOMEM);
 return (0);
}
