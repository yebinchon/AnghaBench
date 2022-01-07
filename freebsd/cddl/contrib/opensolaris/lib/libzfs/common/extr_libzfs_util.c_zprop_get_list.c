
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* pl_next; } ;
typedef TYPE_1__ zprop_list_t ;
typedef int zfs_type_t ;
typedef int libzfs_handle_t ;


 int EZFS_BADPROP ;
 int TEXT_DOMAIN ;
 scalar_t__ addlist (int *,char*,TYPE_1__**,int ) ;
 int dgettext (int ,char*) ;
 char* strchr (char*,char) ;
 scalar_t__ strcmp (char*,char*) ;
 size_t strlen (char*) ;
 int zfs_error (int *,int ,int ) ;
 int zfs_error_aux (int *,int ) ;

int
zprop_get_list(libzfs_handle_t *hdl, char *props, zprop_list_t **listp,
    zfs_type_t type)
{
 *listp = ((void*)0);




 if (strcmp(props, "all") == 0)
  return (0);




 if (props[0] == '\0') {
  zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
      "no properties specified"));
  return (zfs_error(hdl, EZFS_BADPROP, dgettext(TEXT_DOMAIN,
      "bad property list")));
 }





 while (*props != '\0') {
  size_t len;
  char *p;
  char c;

  if ((p = strchr(props, ',')) == ((void*)0)) {
   len = strlen(props);
   p = props + len;
  } else {
   len = p - props;
  }




  if (len == 0) {
   zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
       "empty property name"));
   return (zfs_error(hdl, EZFS_BADPROP,
       dgettext(TEXT_DOMAIN, "bad property list")));
  }




  c = props[len];
  props[len] = '\0';

  if (strcmp(props, "space") == 0) {
   static char *spaceprops[] = {
    "name", "avail", "used", "usedbysnapshots",
    "usedbydataset", "usedbyrefreservation",
    "usedbychildren", ((void*)0)
   };
   int i;

   for (i = 0; spaceprops[i]; i++) {
    if (addlist(hdl, spaceprops[i], listp, type))
     return (-1);
    listp = &(*listp)->pl_next;
   }
  } else {
   if (addlist(hdl, props, listp, type))
    return (-1);
   listp = &(*listp)->pl_next;
  }

  props = p;
  if (c == ',')
   props++;
 }

 return (0);
}
