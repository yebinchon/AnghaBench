
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int path ;
struct TYPE_7__ {int devname; } ;
typedef TYPE_1__ devid_nmlist_t ;
struct TYPE_8__ {int devid; } ;
typedef TYPE_2__ ddi_devid_t ;


 int ENAMETOOLONG ;
 int ENOMEM ;
 int MAXPATHLEN ;
 int errno ;
 int free (TYPE_1__*) ;
 int g_get_name (int ,char*,int) ;
 TYPE_1__* malloc (int) ;
 int strlcpy (int ,char*,int) ;

int
devid_deviceid_to_nmlist(char *search_path, ddi_devid_t devid, char *minor_name,
    devid_nmlist_t **retlist)
{
 char path[MAXPATHLEN];
 char *dst;

 if (g_get_name(devid.devid, path, sizeof(path)) == -1)
  return (errno);
 *retlist = malloc(sizeof(**retlist));
 if (*retlist == ((void*)0))
  return (ENOMEM);
 if (strlcpy((*retlist)[0].devname, path,
     sizeof((*retlist)[0].devname)) >= sizeof((*retlist)[0].devname)) {
  free(*retlist);
  return (ENAMETOOLONG);
 }
 return (0);
}
