
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zfs_handle_t ;
typedef int nvlist_t ;




 int fprintf (int ,char*) ;
 int g_zfs ;
 char* gettext (char*) ;
 int libzfs_errno (int ) ;
 int stderr ;
 scalar_t__ zfs_prop_set_list (int *,int *) ;

__attribute__((used)) static int
set_callback(zfs_handle_t *zhp, void *data)
{
 nvlist_t *props = data;

 if (zfs_prop_set_list(zhp, props) != 0) {
  switch (libzfs_errno(g_zfs)) {
  case 129:
   (void) fprintf(stderr, gettext("property may be set "
       "but unable to remount filesystem\n"));
   break;
  case 128:
   (void) fprintf(stderr, gettext("property may be set "
       "but unable to reshare filesystem\n"));
   break;
  }
  return (1);
 }
 return (0);
}
