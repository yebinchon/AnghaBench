
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int xfs_trans_t ;
struct TYPE_16__ {int di_mode; scalar_t__ di_format; } ;
struct TYPE_17__ {TYPE_3__ i_d; TYPE_2__* i_mount; } ;
typedef TYPE_4__ xfs_inode_t ;
typedef int xfs_ino_t ;
typedef int xfs_fsblock_t ;
typedef int xfs_extlen_t ;
struct TYPE_18__ {int * trans; int whichfork; int total; int * flist; int * firstblock; TYPE_4__* dp; int inumber; int hashval; int namelen; int name; } ;
typedef TYPE_5__ xfs_da_args_t ;
typedef int xfs_bmap_free_t ;
struct xfs_name {int len; int name; } ;
struct TYPE_15__ {TYPE_1__* m_dirnameops; } ;
struct TYPE_14__ {int (* hashname ) (struct xfs_name*) ;} ;


 int ASSERT (int) ;
 int S_IFDIR ;
 int S_IFMT ;
 int XFS_DATA_FORK ;
 scalar_t__ XFS_DINODE_FMT_LOCAL ;
 int XFS_STATS_INC (int ) ;
 int memset (TYPE_5__*,int ,int) ;
 int stub1 (struct xfs_name*) ;
 int xfs_dir2_block_removename (TYPE_5__*) ;
 int xfs_dir2_isblock (int *,TYPE_4__*,int*) ;
 int xfs_dir2_isleaf (int *,TYPE_4__*,int*) ;
 int xfs_dir2_leaf_removename (TYPE_5__*) ;
 int xfs_dir2_node_removename (TYPE_5__*) ;
 int xfs_dir2_sf_removename (TYPE_5__*) ;
 int xs_dir_remove ;

int
xfs_dir_removename(
 xfs_trans_t *tp,
 xfs_inode_t *dp,
 struct xfs_name *name,
 xfs_ino_t ino,
 xfs_fsblock_t *first,
 xfs_bmap_free_t *flist,
 xfs_extlen_t total)
{
 xfs_da_args_t args;
 int rval;
 int v;

 ASSERT((dp->i_d.di_mode & S_IFMT) == S_IFDIR);
 XFS_STATS_INC(xs_dir_remove);

 memset(&args, 0, sizeof(xfs_da_args_t));
 args.name = name->name;
 args.namelen = name->len;
 args.hashval = dp->i_mount->m_dirnameops->hashname(name);
 args.inumber = ino;
 args.dp = dp;
 args.firstblock = first;
 args.flist = flist;
 args.total = total;
 args.whichfork = XFS_DATA_FORK;
 args.trans = tp;

 if (dp->i_d.di_format == XFS_DINODE_FMT_LOCAL)
  rval = xfs_dir2_sf_removename(&args);
 else if ((rval = xfs_dir2_isblock(tp, dp, &v)))
  return rval;
 else if (v)
  rval = xfs_dir2_block_removename(&args);
 else if ((rval = xfs_dir2_isleaf(tp, dp, &v)))
  return rval;
 else if (v)
  rval = xfs_dir2_leaf_removename(&args);
 else
  rval = xfs_dir2_node_removename(&args);
 return rval;
}
