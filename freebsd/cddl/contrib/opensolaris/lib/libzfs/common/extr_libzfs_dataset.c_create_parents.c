
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zfs_handle_t ;
typedef int libzfs_handle_t ;


 int TEXT_DOMAIN ;
 int ZFS_TYPE_FILESYSTEM ;
 int assert (int ) ;
 char* dgettext (int ,char*) ;
 int * make_dataset_handle (int *,char*) ;
 char* strchr (char*,char) ;
 int zfs_close (int *) ;
 scalar_t__ zfs_create (int *,char*,int ,int *) ;
 int zfs_error_aux (int *,char*,char const*,char*) ;
 scalar_t__ zfs_mount (int *,int *,int ) ;
 int * zfs_open (int *,char*,int ) ;
 scalar_t__ zfs_share (int *) ;

int
create_parents(libzfs_handle_t *hdl, char *target, int prefixlen)
{
 zfs_handle_t *h;
 char *cp;
 const char *opname;


 cp = target + prefixlen;
 if (*cp != '/') {
  assert(strchr(cp, '/') == ((void*)0));
  h = zfs_open(hdl, target, ZFS_TYPE_FILESYSTEM);
 } else {
  *cp = '\0';
  h = zfs_open(hdl, target, ZFS_TYPE_FILESYSTEM);
  *cp = '/';
 }
 if (h == ((void*)0))
  return (-1);
 zfs_close(h);





 for (cp = target + prefixlen + 1;
     (cp = strchr(cp, '/')) != ((void*)0); *cp = '/', cp++) {

  *cp = '\0';

  h = make_dataset_handle(hdl, target);
  if (h) {

   zfs_close(h);
   continue;
  }

  if (zfs_create(hdl, target, ZFS_TYPE_FILESYSTEM,
      ((void*)0)) != 0) {
   opname = dgettext(TEXT_DOMAIN, "create");
   goto ancestorerr;
  }

  h = zfs_open(hdl, target, ZFS_TYPE_FILESYSTEM);
  if (h == ((void*)0)) {
   opname = dgettext(TEXT_DOMAIN, "open");
   goto ancestorerr;
  }

  if (zfs_mount(h, ((void*)0), 0) != 0) {
   opname = dgettext(TEXT_DOMAIN, "mount");
   goto ancestorerr;
  }

  if (zfs_share(h) != 0) {
   opname = dgettext(TEXT_DOMAIN, "share");
   goto ancestorerr;
  }

  zfs_close(h);
 }

 return (0);

ancestorerr:
 zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
     "failed to %s ancestor '%s'"), opname, target);
 return (-1);
}
