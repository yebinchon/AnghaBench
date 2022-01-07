
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct mnttab {char* mnt_special; int mnt_fstype; int member_0; } ;
struct TYPE_8__ {struct mnttab mtn_mt; } ;
typedef TYPE_1__ mnttab_node_t ;
struct TYPE_9__ {int libzfs_mnttab_cache_lock; int libzfs_mnttab_cache; int libzfs_mnttab; int libzfs_mnttab_enable; } ;
typedef TYPE_2__ libzfs_handle_t ;


 int ENOENT ;
 int MNTTYPE_ZFS ;
 TYPE_1__* avl_find (int *,TYPE_1__*,int *) ;
 scalar_t__ avl_numnodes (int *) ;
 scalar_t__ getmntany (int ,struct mnttab*,struct mnttab*) ;
 int libzfs_mnttab_fini (TYPE_2__*) ;
 int libzfs_mnttab_update (TYPE_2__*) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int rewind (int ) ;

int
libzfs_mnttab_find(libzfs_handle_t *hdl, const char *fsname,
    struct mnttab *entry)
{
 mnttab_node_t find;
 mnttab_node_t *mtn;
 int ret = ENOENT;

 if (!hdl->libzfs_mnttab_enable) {
  struct mnttab srch = { 0 };

  if (avl_numnodes(&hdl->libzfs_mnttab_cache))
   libzfs_mnttab_fini(hdl);
  rewind(hdl->libzfs_mnttab);
  srch.mnt_special = (char *)fsname;
  srch.mnt_fstype = MNTTYPE_ZFS;
  if (getmntany(hdl->libzfs_mnttab, entry, &srch) == 0)
   return (0);
  else
   return (ENOENT);
 }

 pthread_mutex_lock(&hdl->libzfs_mnttab_cache_lock);
 if (avl_numnodes(&hdl->libzfs_mnttab_cache) == 0)
  libzfs_mnttab_update(hdl);

 find.mtn_mt.mnt_special = (char *)fsname;
 mtn = avl_find(&hdl->libzfs_mnttab_cache, &find, ((void*)0));
 if (mtn) {
  *entry = mtn->mtn_mt;
  ret = 0;
 }
 pthread_mutex_unlock(&hdl->libzfs_mnttab_cache_lock);
 return (ret);
}
