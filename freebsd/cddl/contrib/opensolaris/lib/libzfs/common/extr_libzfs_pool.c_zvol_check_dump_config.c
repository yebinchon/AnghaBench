
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zpool_handle_t ;
typedef int uint_t ;
typedef int nvlist_t ;
typedef int libzfs_handle_t ;
typedef int errbuf ;


 int B_TRUE ;
 int EZFS_INVALCONFIG ;
 int EZFS_INVALIDNAME ;
 int EZFS_NAMETOOLONG ;
 int EZFS_OPENFAILED ;
 int TEXT_DOMAIN ;
 int ZFS_MAX_DATASET_NAME_LEN ;
 int ZPOOL_CONFIG_CHILDREN ;
 int ZPOOL_CONFIG_VDEV_TREE ;
 int ZVOL_FULL_DEV_DIR ;
 char* dgettext (int ,char*) ;
 int libzfs_fini (int *) ;
 int * libzfs_init () ;
 int libzfs_print_on_error (int *,int ) ;
 scalar_t__ nvlist_lookup_nvlist (int *,int ,int **) ;
 scalar_t__ nvlist_lookup_nvlist_array (int *,int ,int ***,int *) ;
 int snprintf (char*,int,char*,char*) ;
 char* strchr (char*,char) ;
 int strlen (int ) ;
 scalar_t__ strncmp (char*,int ,int) ;
 int strncpy (char*,char*,int) ;
 int supported_dump_vdev_type (int *,int *,char*) ;
 int verify (int) ;
 int zfs_error (int *,int ,char*) ;
 int zfs_error_aux (int *,char*,...) ;
 int zpool_close (int *) ;
 int * zpool_get_config (int *,int *) ;
 int * zpool_open (int *,char*) ;

int
zvol_check_dump_config(char *arg)
{
 zpool_handle_t *zhp = ((void*)0);
 nvlist_t *config, *nvroot;
 char *p, *volname;
 nvlist_t **top;
 uint_t toplevels;
 libzfs_handle_t *hdl;
 char errbuf[1024];
 char poolname[ZFS_MAX_DATASET_NAME_LEN];
 int pathlen = strlen(ZVOL_FULL_DEV_DIR);
 int ret = 1;

 if (strncmp(arg, ZVOL_FULL_DEV_DIR, pathlen)) {
  return (-1);
 }

 (void) snprintf(errbuf, sizeof (errbuf), dgettext(TEXT_DOMAIN,
     "dump is not supported on device '%s'"), arg);

 if ((hdl = libzfs_init()) == ((void*)0))
  return (1);
 libzfs_print_on_error(hdl, B_TRUE);

 volname = arg + pathlen;


 if ((p = strchr(volname, '/')) == ((void*)0)) {
  zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
      "malformed dataset name"));
  (void) zfs_error(hdl, EZFS_INVALIDNAME, errbuf);
  return (1);
 } else if (p - volname >= ZFS_MAX_DATASET_NAME_LEN) {
  zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
      "dataset name is too long"));
  (void) zfs_error(hdl, EZFS_NAMETOOLONG, errbuf);
  return (1);
 } else {
  (void) strncpy(poolname, volname, p - volname);
  poolname[p - volname] = '\0';
 }

 if ((zhp = zpool_open(hdl, poolname)) == ((void*)0)) {
  zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
      "could not open pool '%s'"), poolname);
  (void) zfs_error(hdl, EZFS_OPENFAILED, errbuf);
  goto out;
 }
 config = zpool_get_config(zhp, ((void*)0));
 if (nvlist_lookup_nvlist(config, ZPOOL_CONFIG_VDEV_TREE,
     &nvroot) != 0) {
  zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
      "could not obtain vdev configuration for  '%s'"), poolname);
  (void) zfs_error(hdl, EZFS_INVALCONFIG, errbuf);
  goto out;
 }

 verify(nvlist_lookup_nvlist_array(nvroot, ZPOOL_CONFIG_CHILDREN,
     &top, &toplevels) == 0);

 if (!supported_dump_vdev_type(hdl, top[0], errbuf)) {
  goto out;
 }
 ret = 0;

out:
 if (zhp)
  zpool_close(zhp);
 libzfs_fini(hdl);
 return (ret);
}
