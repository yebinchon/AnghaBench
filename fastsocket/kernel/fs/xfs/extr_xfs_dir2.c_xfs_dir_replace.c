
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


struct TYPE_21__ {int t_mountp; } ;
typedef TYPE_4__ xfs_trans_t ;
struct TYPE_20__ {int di_mode; scalar_t__ di_format; } ;
struct TYPE_22__ {TYPE_3__ i_d; TYPE_2__* i_mount; } ;
typedef TYPE_5__ xfs_inode_t ;
typedef int xfs_ino_t ;
typedef int xfs_fsblock_t ;
typedef int xfs_extlen_t ;
struct TYPE_23__ {TYPE_4__* trans; int whichfork; int total; int * flist; int * firstblock; TYPE_5__* dp; int inumber; int hashval; int namelen; int name; } ;
typedef TYPE_6__ xfs_da_args_t ;
typedef int xfs_bmap_free_t ;
struct xfs_name {int len; int name; } ;
struct TYPE_19__ {TYPE_1__* m_dirnameops; } ;
struct TYPE_18__ {int (* hashname ) (struct xfs_name*) ;} ;


 int ASSERT (int) ;
 int S_IFDIR ;
 int S_IFMT ;
 int XFS_DATA_FORK ;
 scalar_t__ XFS_DINODE_FMT_LOCAL ;
 int memset (TYPE_6__*,int ,int) ;
 int stub1 (struct xfs_name*) ;
 int xfs_dir2_block_replace (TYPE_6__*) ;
 int xfs_dir2_isblock (TYPE_4__*,TYPE_5__*,int*) ;
 int xfs_dir2_isleaf (TYPE_4__*,TYPE_5__*,int*) ;
 int xfs_dir2_leaf_replace (TYPE_6__*) ;
 int xfs_dir2_node_replace (TYPE_6__*) ;
 int xfs_dir2_sf_replace (TYPE_6__*) ;
 int xfs_dir_ino_validate (int ,int ) ;

int
xfs_dir_replace(
 xfs_trans_t *tp,
 xfs_inode_t *dp,
 struct xfs_name *name,
 xfs_ino_t inum,
 xfs_fsblock_t *first,
 xfs_bmap_free_t *flist,
 xfs_extlen_t total)
{
 xfs_da_args_t args;
 int rval;
 int v;

 ASSERT((dp->i_d.di_mode & S_IFMT) == S_IFDIR);

 if ((rval = xfs_dir_ino_validate(tp->t_mountp, inum)))
  return rval;

 memset(&args, 0, sizeof(xfs_da_args_t));
 args.name = name->name;
 args.namelen = name->len;
 args.hashval = dp->i_mount->m_dirnameops->hashname(name);
 args.inumber = inum;
 args.dp = dp;
 args.firstblock = first;
 args.flist = flist;
 args.total = total;
 args.whichfork = XFS_DATA_FORK;
 args.trans = tp;

 if (dp->i_d.di_format == XFS_DINODE_FMT_LOCAL)
  rval = xfs_dir2_sf_replace(&args);
 else if ((rval = xfs_dir2_isblock(tp, dp, &v)))
  return rval;
 else if (v)
  rval = xfs_dir2_block_replace(&args);
 else if ((rval = xfs_dir2_isleaf(tp, dp, &v)))
  return rval;
 else if (v)
  rval = xfs_dir2_leaf_replace(&args);
 else
  rval = xfs_dir2_node_replace(&args);
 return rval;
}
