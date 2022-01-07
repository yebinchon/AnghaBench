
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int i_mount; } ;
typedef TYPE_1__ xfs_inode_t ;
typedef int xfs_ino_t ;
typedef int uint ;
struct xfs_name {int name; } ;


 int EIO ;
 int XFS_ERROR (int ) ;
 scalar_t__ XFS_FORCED_SHUTDOWN (int ) ;
 int kmem_free (int ) ;
 int trace_xfs_lookup (TYPE_1__*,struct xfs_name*) ;
 int xfs_dir_lookup (int *,TYPE_1__*,struct xfs_name*,int *,struct xfs_name*) ;
 int xfs_iget (int ,int *,int ,int ,int ,TYPE_1__**) ;
 int xfs_ilock_map_shared (TYPE_1__*) ;
 int xfs_iunlock_map_shared (TYPE_1__*,int ) ;

int
xfs_lookup(
 xfs_inode_t *dp,
 struct xfs_name *name,
 xfs_inode_t **ipp,
 struct xfs_name *ci_name)
{
 xfs_ino_t inum;
 int error;
 uint lock_mode;

 trace_xfs_lookup(dp, name);

 if (XFS_FORCED_SHUTDOWN(dp->i_mount))
  return XFS_ERROR(EIO);

 lock_mode = xfs_ilock_map_shared(dp);
 error = xfs_dir_lookup(((void*)0), dp, name, &inum, ci_name);
 xfs_iunlock_map_shared(dp, lock_mode);

 if (error)
  goto out;

 error = xfs_iget(dp->i_mount, ((void*)0), inum, 0, 0, ipp);
 if (error)
  goto out_free_name;

 return 0;

out_free_name:
 if (ci_name)
  kmem_free(ci_name->name);
out:
 *ipp = ((void*)0);
 return error;
}
