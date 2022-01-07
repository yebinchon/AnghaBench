
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ pl_prop; scalar_t__ pl_width; scalar_t__ pl_recvd_width; int * pl_user_prop; scalar_t__ pl_fixed; struct TYPE_11__* pl_next; scalar_t__ pl_all; } ;
typedef TYPE_1__ zprop_list_t ;
struct TYPE_12__ {int * zfs_hdl; } ;
typedef TYPE_2__ zfs_handle_t ;
typedef int nvpair_t ;
typedef int nvlist_t ;
typedef int libzfs_handle_t ;
typedef int buf ;
typedef scalar_t__ boolean_t ;


 scalar_t__ B_TRUE ;
 int ZFS_MAXPROPLEN ;
 int ZFS_TYPE_DATASET ;
 scalar_t__ ZPROP_INVAL ;
 int ZPROP_VALUE ;
 int free (TYPE_1__*) ;
 scalar_t__ nvlist_lookup_nvlist (int *,int *,int **) ;
 scalar_t__ nvlist_lookup_string (int *,int ,char**) ;
 int * nvlist_next_nvpair (int *,int *) ;
 char* nvpair_name (int *) ;
 scalar_t__ strcmp (int *,char*) ;
 scalar_t__ strlen (char*) ;
 int verify (int) ;
 TYPE_1__* zfs_alloc (int *,int) ;
 int * zfs_get_user_props (TYPE_2__*) ;
 scalar_t__ zfs_prop_get (TYPE_2__*,scalar_t__,char*,int,int *,int *,int ,scalar_t__) ;
 scalar_t__ zfs_prop_get_recvd (TYPE_2__*,int *,char*,int,scalar_t__) ;
 int * zfs_prop_to_name (scalar_t__) ;
 int * zfs_strdup (int *,char*) ;
 scalar_t__ zprop_expand_list (int *,TYPE_1__**,int ) ;

int
zfs_expand_proplist(zfs_handle_t *zhp, zprop_list_t **plp, boolean_t received,
    boolean_t literal)
{
 libzfs_handle_t *hdl = zhp->zfs_hdl;
 zprop_list_t *entry;
 zprop_list_t **last, **start;
 nvlist_t *userprops, *propval;
 nvpair_t *elem;
 char *strval;
 char buf[ZFS_MAXPROPLEN];

 if (zprop_expand_list(hdl, plp, ZFS_TYPE_DATASET) != 0)
  return (-1);

 userprops = zfs_get_user_props(zhp);

 entry = *plp;
 if (entry->pl_all && nvlist_next_nvpair(userprops, ((void*)0)) != ((void*)0)) {





  start = plp;
  while (*start != ((void*)0)) {
   if ((*start)->pl_prop == ZPROP_INVAL)
    break;
   start = &(*start)->pl_next;
  }

  elem = ((void*)0);
  while ((elem = nvlist_next_nvpair(userprops, elem)) != ((void*)0)) {



   for (last = start; *last != ((void*)0);
       last = &(*last)->pl_next) {
    if (strcmp((*last)->pl_user_prop,
        nvpair_name(elem)) == 0)
     break;
   }

   if (*last == ((void*)0)) {
    if ((entry = zfs_alloc(hdl,
        sizeof (zprop_list_t))) == ((void*)0) ||
        ((entry->pl_user_prop = zfs_strdup(hdl,
        nvpair_name(elem)))) == ((void*)0)) {
     free(entry);
     return (-1);
    }

    entry->pl_prop = ZPROP_INVAL;
    entry->pl_width = strlen(nvpair_name(elem));
    entry->pl_all = B_TRUE;
    *last = entry;
   }
  }
 }




 for (entry = *plp; entry != ((void*)0); entry = entry->pl_next) {
  if (entry->pl_fixed && !literal)
   continue;

  if (entry->pl_prop != ZPROP_INVAL) {
   if (zfs_prop_get(zhp, entry->pl_prop,
       buf, sizeof (buf), ((void*)0), ((void*)0), 0, literal) == 0) {
    if (strlen(buf) > entry->pl_width)
     entry->pl_width = strlen(buf);
   }
   if (received && zfs_prop_get_recvd(zhp,
       zfs_prop_to_name(entry->pl_prop),
       buf, sizeof (buf), literal) == 0)
    if (strlen(buf) > entry->pl_recvd_width)
     entry->pl_recvd_width = strlen(buf);
  } else {
   if (nvlist_lookup_nvlist(userprops, entry->pl_user_prop,
       &propval) == 0) {
    verify(nvlist_lookup_string(propval,
        ZPROP_VALUE, &strval) == 0);
    if (strlen(strval) > entry->pl_width)
     entry->pl_width = strlen(strval);
   }
   if (received && zfs_prop_get_recvd(zhp,
       entry->pl_user_prop,
       buf, sizeof (buf), literal) == 0)
    if (strlen(buf) > entry->pl_recvd_width)
     entry->pl_recvd_width = strlen(buf);
  }
 }

 return (0);
}
