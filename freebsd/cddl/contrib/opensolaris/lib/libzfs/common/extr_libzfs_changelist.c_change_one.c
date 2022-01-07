
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ zprop_source_t ;
typedef int zfs_handle_t ;
typedef int where ;
typedef int uu_list_index_t ;
typedef int property ;
struct TYPE_8__ {int cn_mounted; int cn_listnode; scalar_t__ cn_zoned; void* cn_needpost; int cn_shared; int * cn_handle; } ;
typedef TYPE_1__ prop_changenode_t ;
struct TYPE_9__ {scalar_t__ cl_realprop; scalar_t__ cl_prop; scalar_t__ cl_shareprop; int cl_gflags; scalar_t__ cl_alldependents; int cl_list; scalar_t__ cl_sorted; int cl_pool; void* cl_haszonedchild; scalar_t__ cl_allchildren; } ;
typedef TYPE_2__ prop_changelist_t ;


 int B_FALSE ;
 void* B_TRUE ;
 int CL_GATHER_MOUNT_ALWAYS ;
 scalar_t__ GLOBAL_ZONEID ;
 scalar_t__ ZFS_IS_VOLUME (int *) ;
 int ZFS_MAXPROPLEN ;
 scalar_t__ ZFS_PROP_NAME ;
 int ZFS_PROP_ZONED ;
 scalar_t__ ZPROP_INVAL ;
 scalar_t__ ZPROP_SRC_DEFAULT ;
 scalar_t__ ZPROP_SRC_INHERITED ;
 scalar_t__ getzoneid () ;
 int uu_list_find (int ,TYPE_1__*,int *,int *) ;
 int uu_list_first (int ) ;
 int uu_list_insert (int ,TYPE_1__*,int ) ;
 scalar_t__ uu_list_insert_before (int ,int ,TYPE_1__*) ;
 int uu_list_node_init (TYPE_1__*,int *,int ) ;
 int verify (int) ;
 TYPE_1__* zfs_alloc (int ,int) ;
 int zfs_close (int *) ;
 int zfs_get_handle (int *) ;
 scalar_t__ zfs_is_mounted (int *,int *) ;
 int zfs_is_shared (int *) ;
 int zfs_iter_children (int *,int (*) (int *,void*),void*) ;
 scalar_t__ zfs_prop_get (int *,scalar_t__,char*,int,scalar_t__*,char*,int,int ) ;
 scalar_t__ zfs_prop_get_int (int *,int ) ;

__attribute__((used)) static int
change_one(zfs_handle_t *zhp, void *data)
{
 prop_changelist_t *clp = data;
 char property[ZFS_MAXPROPLEN];
 char where[64];
 prop_changenode_t *cn;
 zprop_source_t sourcetype;
 zprop_source_t share_sourcetype;
 if (!(ZFS_IS_VOLUME(zhp) && clp->cl_realprop == ZFS_PROP_NAME) &&
     zfs_prop_get(zhp, clp->cl_prop, property,
     sizeof (property), &sourcetype, where, sizeof (where),
     B_FALSE) != 0) {
  zfs_close(zhp);
  return (0);
 }






 if (clp->cl_shareprop != ZPROP_INVAL &&
     zfs_prop_get(zhp, clp->cl_shareprop, property,
     sizeof (property), &share_sourcetype, where, sizeof (where),
     B_FALSE) != 0) {
  zfs_close(zhp);
  return (0);
 }

 if (clp->cl_alldependents || clp->cl_allchildren ||
     sourcetype == ZPROP_SRC_DEFAULT ||
     sourcetype == ZPROP_SRC_INHERITED ||
     (clp->cl_shareprop != ZPROP_INVAL &&
     (share_sourcetype == ZPROP_SRC_DEFAULT ||
     share_sourcetype == ZPROP_SRC_INHERITED))) {
  if ((cn = zfs_alloc(zfs_get_handle(zhp),
      sizeof (prop_changenode_t))) == ((void*)0)) {
   zfs_close(zhp);
   return (-1);
  }

  cn->cn_handle = zhp;
  cn->cn_mounted = (clp->cl_gflags & CL_GATHER_MOUNT_ALWAYS) ||
      zfs_is_mounted(zhp, ((void*)0));
  cn->cn_shared = zfs_is_shared(zhp);
  cn->cn_zoned = zfs_prop_get_int(zhp, ZFS_PROP_ZONED);
  cn->cn_needpost = B_TRUE;


  if (getzoneid() == GLOBAL_ZONEID && cn->cn_zoned)
   clp->cl_haszonedchild = B_TRUE;

  uu_list_node_init(cn, &cn->cn_listnode, clp->cl_pool);

  if (clp->cl_sorted) {
   uu_list_index_t idx;

   (void) uu_list_find(clp->cl_list, cn, ((void*)0),
       &idx);
   uu_list_insert(clp->cl_list, cn, idx);
  } else {
   verify(uu_list_insert_before(clp->cl_list,
       uu_list_first(clp->cl_list), cn) == 0);
  }

  if (!clp->cl_alldependents)
   return (zfs_iter_children(zhp, change_one, data));
 } else {
  zfs_close(zhp);
 }

 return (0);
}
