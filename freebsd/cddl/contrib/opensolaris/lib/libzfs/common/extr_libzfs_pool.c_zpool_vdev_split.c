
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_14__ {char* zpool_name; int * zpool_hdl; } ;
typedef TYPE_1__ zpool_handle_t ;
struct TYPE_15__ {int zc_string; int zc_name; int zc_cookie; int member_0; } ;
typedef TYPE_2__ zfs_cmd_t ;
typedef int uint_t ;
typedef int uint64_t ;
struct TYPE_16__ {int import; scalar_t__ dryrun; } ;
typedef TYPE_3__ splitflags_t ;
struct TYPE_17__ {void* create; void* import; } ;
typedef TYPE_4__ prop_flags_t ;
typedef int nvlist_t ;
typedef int msg ;
typedef int libzfs_handle_t ;
typedef void* boolean_t ;


 void* B_FALSE ;
 void* B_TRUE ;
 int EZFS_INVALCONFIG ;
 int EZFS_INVALIDNAME ;
 int NV_UNIQUE_NAME ;
 int TEXT_DOMAIN ;
 char* VDEV_TYPE_HOLE ;
 int VDEV_TYPE_MIRROR ;
 char* VDEV_TYPE_ROOT ;
 int ZFS_IOC_VDEV_SPLIT ;
 int ZPOOL_CONFIG_CHILDREN ;
 int ZPOOL_CONFIG_IS_HOLE ;
 int ZPOOL_CONFIG_IS_LOG ;
 int ZPOOL_CONFIG_POOL_NAME ;
 int ZPOOL_CONFIG_TYPE ;
 int ZPOOL_CONFIG_VDEV_TREE ;
 int ZPOOL_CONFIG_VERSION ;
 int ZPOOL_EXPORT_AFTER_SPLIT ;
 char* dgettext (int ,char*) ;
 int errno ;
 int find_vdev_entry (TYPE_1__*,int **,int,int **,int) ;
 int fprintf (int ,char*) ;
 int free (int **) ;
 char* gettext (char*) ;
 int no_memory (int *) ;
 scalar_t__ nvlist_add_nvlist (int *,int ,int *) ;
 scalar_t__ nvlist_add_nvlist_array (int *,int ,int **,int) ;
 scalar_t__ nvlist_add_string (int *,int ,char*) ;
 scalar_t__ nvlist_add_uint64 (int *,int ,int) ;
 scalar_t__ nvlist_alloc (int **,int ,int ) ;
 scalar_t__ nvlist_dup (int *,int **,int ) ;
 int nvlist_free (int *) ;
 scalar_t__ nvlist_lookup_nvlist (int *,int ,int **) ;
 scalar_t__ nvlist_lookup_nvlist_array (int *,int ,int ***,int*) ;
 scalar_t__ nvlist_lookup_string (int *,int ,char**) ;
 scalar_t__ nvlist_lookup_uint64 (int *,int ,int*) ;
 scalar_t__ nvlist_remove_all (int *,int ) ;
 int snprintf (char*,int,char*,char*) ;
 int stderr ;
 scalar_t__ strcmp (char*,int ) ;
 int strlcpy (int ,char*,int) ;
 int verify (int) ;
 int zcmd_free_nvlists (TYPE_2__*) ;
 scalar_t__ zcmd_write_conf_nvlist (int *,TYPE_2__*,int *) ;
 scalar_t__ zcmd_write_src_nvlist (int *,TYPE_2__*,int *) ;
 int ** zfs_alloc (int *,int) ;
 int zfs_error (int *,int ,char*) ;
 int zfs_error_aux (int *,char*) ;
 scalar_t__ zfs_ioctl (int *,int ,TYPE_2__*) ;
 int * zpool_get_config (TYPE_1__*,int *) ;
 int zpool_name_valid (int *,void*,char*) ;
 int zpool_standard_error (int *,int ,char*) ;
 int * zpool_valid_proplist (int *,char*,int *,int,TYPE_4__,char*) ;

int
zpool_vdev_split(zpool_handle_t *zhp, char *newname, nvlist_t **newroot,
    nvlist_t *props, splitflags_t flags)
{
 zfs_cmd_t zc = { 0 };
 char msg[1024];
 nvlist_t *tree, *config, **child, **newchild, *newconfig = ((void*)0);
 nvlist_t **varray = ((void*)0), *zc_props = ((void*)0);
 uint_t c, children, newchildren, lastlog = 0, vcount, found = 0;
 libzfs_handle_t *hdl = zhp->zpool_hdl;
 uint64_t vers;
 boolean_t freelist = B_FALSE, memory_err = B_TRUE;
 int retval = 0;

 (void) snprintf(msg, sizeof (msg),
     dgettext(TEXT_DOMAIN, "Unable to split %s"), zhp->zpool_name);

 if (!zpool_name_valid(hdl, B_FALSE, newname))
  return (zfs_error(hdl, EZFS_INVALIDNAME, msg));

 if ((config = zpool_get_config(zhp, ((void*)0))) == ((void*)0)) {
  (void) fprintf(stderr, gettext("Internal error: unable to "
      "retrieve pool configuration\n"));
  return (-1);
 }

 verify(nvlist_lookup_nvlist(config, ZPOOL_CONFIG_VDEV_TREE, &tree)
     == 0);
 verify(nvlist_lookup_uint64(config, ZPOOL_CONFIG_VERSION, &vers) == 0);

 if (props) {
  prop_flags_t flags = { .create = B_FALSE, .import = B_TRUE };
  if ((zc_props = zpool_valid_proplist(hdl, zhp->zpool_name,
      props, vers, flags, msg)) == ((void*)0))
   return (-1);
 }

 if (nvlist_lookup_nvlist_array(tree, ZPOOL_CONFIG_CHILDREN, &child,
     &children) != 0) {
  zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
      "Source pool is missing vdev tree"));
  nvlist_free(zc_props);
  return (-1);
 }

 varray = zfs_alloc(hdl, children * sizeof (nvlist_t *));
 vcount = 0;

 if (*newroot == ((void*)0) ||
     nvlist_lookup_nvlist_array(*newroot, ZPOOL_CONFIG_CHILDREN,
     &newchild, &newchildren) != 0)
  newchildren = 0;

 for (c = 0; c < children; c++) {
  uint64_t is_log = B_FALSE, is_hole = B_FALSE;
  char *type;
  nvlist_t **mchild, *vdev;
  uint_t mchildren;
  int entry;





  (void) nvlist_lookup_uint64(child[c], ZPOOL_CONFIG_IS_LOG,
      &is_log);
  (void) nvlist_lookup_uint64(child[c], ZPOOL_CONFIG_IS_HOLE,
      &is_hole);
  if (is_log || is_hole) {



   if (nvlist_alloc(&vdev, NV_UNIQUE_NAME, 0) != 0)
    goto out;
   if (nvlist_add_string(vdev, ZPOOL_CONFIG_TYPE,
       VDEV_TYPE_HOLE) != 0)
    goto out;
   if (nvlist_add_uint64(vdev, ZPOOL_CONFIG_IS_HOLE,
       1) != 0)
    goto out;
   if (lastlog == 0)
    lastlog = vcount;
   varray[vcount++] = vdev;
   continue;
  }
  lastlog = 0;
  verify(nvlist_lookup_string(child[c], ZPOOL_CONFIG_TYPE, &type)
      == 0);
  if (strcmp(type, VDEV_TYPE_MIRROR) != 0) {
   zfs_error_aux(hdl, dgettext(TEXT_DOMAIN,
       "Source pool must be composed only of mirrors\n"));
   retval = zfs_error(hdl, EZFS_INVALCONFIG, msg);
   goto out;
  }

  verify(nvlist_lookup_nvlist_array(child[c],
      ZPOOL_CONFIG_CHILDREN, &mchild, &mchildren) == 0);


  if (newchildren > 0 &&
      (entry = find_vdev_entry(zhp, mchild, mchildren,
      newchild, newchildren)) >= 0) {

   vdev = mchild[entry];
   ++found;
  } else {

   vdev = mchild[mchildren - 1];
  }

  if (nvlist_dup(vdev, &varray[vcount++], 0) != 0)
   goto out;
 }


 if (found != newchildren) {
  zfs_error_aux(hdl, dgettext(TEXT_DOMAIN, "Device list must "
      "include at most one disk from each mirror"));
  retval = zfs_error(hdl, EZFS_INVALCONFIG, msg);
  goto out;
 }


 if (*newroot == ((void*)0)) {
  if (nvlist_alloc(newroot, NV_UNIQUE_NAME, 0) != 0)
   goto out;
  freelist = B_TRUE;
  if (nvlist_add_string(*newroot, ZPOOL_CONFIG_TYPE,
      VDEV_TYPE_ROOT) != 0)
   goto out;
 } else {
  verify(nvlist_remove_all(*newroot, ZPOOL_CONFIG_CHILDREN) == 0);
 }


 if (nvlist_add_nvlist_array(*newroot, ZPOOL_CONFIG_CHILDREN, varray,
     lastlog == 0 ? vcount : lastlog) != 0)
  goto out;




 if (flags.dryrun) {
  memory_err = B_FALSE;
  freelist = B_FALSE;
  goto out;
 }


 if (nvlist_alloc(&newconfig, NV_UNIQUE_NAME, 0) != 0)
  goto out;

 if (nvlist_add_nvlist(newconfig,
     ZPOOL_CONFIG_VDEV_TREE, *newroot) != 0 ||
     nvlist_add_string(newconfig,
     ZPOOL_CONFIG_POOL_NAME, newname) != 0 ||
     nvlist_add_uint64(newconfig, ZPOOL_CONFIG_VERSION, vers) != 0)
  goto out;





 if (!flags.import)
  zc.zc_cookie = ZPOOL_EXPORT_AFTER_SPLIT;
 (void) strlcpy(zc.zc_name, zhp->zpool_name, sizeof (zc.zc_name));
 (void) strlcpy(zc.zc_string, newname, sizeof (zc.zc_string));
 if (zcmd_write_conf_nvlist(hdl, &zc, newconfig) != 0)
  goto out;
 if (zc_props != ((void*)0) && zcmd_write_src_nvlist(hdl, &zc, zc_props) != 0)
  goto out;

 if (zfs_ioctl(hdl, ZFS_IOC_VDEV_SPLIT, &zc) != 0) {
  retval = zpool_standard_error(hdl, errno, msg);
  goto out;
 }

 freelist = B_FALSE;
 memory_err = B_FALSE;

out:
 if (varray != ((void*)0)) {
  int v;

  for (v = 0; v < vcount; v++)
   nvlist_free(varray[v]);
  free(varray);
 }
 zcmd_free_nvlists(&zc);
 nvlist_free(zc_props);
 nvlist_free(newconfig);
 if (freelist) {
  nvlist_free(*newroot);
  *newroot = ((void*)0);
 }

 if (retval != 0)
  return (retval);

 if (memory_err)
  return (no_memory(hdl));

 return (0);
}
