
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* libzfs_chassis_id; int * libzfs_fru_hash; } ;
typedef TYPE_1__ libzfs_handle_t ;
typedef int boolean_t ;


 int B_FALSE ;
 int B_TRUE ;
 int libzfs_fru_refresh (TYPE_1__*) ;
 size_t strlen (char*) ;
 scalar_t__ strncmp (char const*,char*,size_t) ;
 char* strstr (char const*,char*) ;

boolean_t
libzfs_fru_notself(libzfs_handle_t *hdl, const char *fru)
{
 const char *chassisid;
 size_t len;

 if (hdl->libzfs_fru_hash == ((void*)0))
  libzfs_fru_refresh(hdl);

 if (hdl->libzfs_chassis_id[0] == '\0')
  return (B_FALSE);

 if (strstr(fru, "/chassis=0/") == ((void*)0))
  return (B_FALSE);

 if ((chassisid = strstr(fru, ":chassis-id=")) == ((void*)0))
  return (B_FALSE);

 chassisid += 12;
 len = strlen(hdl->libzfs_chassis_id);
 if (strncmp(chassisid, hdl->libzfs_chassis_id, len) == 0 &&
     (chassisid[len] == '/' || chassisid[len] == ':'))
  return (B_FALSE);

 return (B_TRUE);
}
