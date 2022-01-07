
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
struct TYPE_18__ {int valuelen; int value; int inumber; int op_flags; int * trans; int whichfork; TYPE_4__* dp; int hashval; int namelen; int name; } ;
typedef TYPE_5__ xfs_da_args_t ;
struct xfs_name {int len; int name; } ;
struct TYPE_15__ {TYPE_1__* m_dirnameops; } ;
struct TYPE_14__ {int (* hashname ) (struct xfs_name*) ;} ;


 int ASSERT (int) ;
 int EEXIST ;
 int S_IFDIR ;
 int S_IFMT ;
 int XFS_DATA_FORK ;
 int XFS_DA_OP_CILOOKUP ;
 int XFS_DA_OP_OKNOENT ;
 scalar_t__ XFS_DINODE_FMT_LOCAL ;
 int XFS_STATS_INC (int ) ;
 int memset (TYPE_5__*,int ,int) ;
 int stub1 (struct xfs_name*) ;
 int xfs_dir2_block_lookup (TYPE_5__*) ;
 int xfs_dir2_isblock (int *,TYPE_4__*,int*) ;
 int xfs_dir2_isleaf (int *,TYPE_4__*,int*) ;
 int xfs_dir2_leaf_lookup (TYPE_5__*) ;
 int xfs_dir2_node_lookup (TYPE_5__*) ;
 int xfs_dir2_sf_lookup (TYPE_5__*) ;
 int xs_dir_lookup ;

int
xfs_dir_lookup(
 xfs_trans_t *tp,
 xfs_inode_t *dp,
 struct xfs_name *name,
 xfs_ino_t *inum,
 struct xfs_name *ci_name)
{
 xfs_da_args_t args;
 int rval;
 int v;

 ASSERT((dp->i_d.di_mode & S_IFMT) == S_IFDIR);
 XFS_STATS_INC(xs_dir_lookup);

 memset(&args, 0, sizeof(xfs_da_args_t));
 args.name = name->name;
 args.namelen = name->len;
 args.hashval = dp->i_mount->m_dirnameops->hashname(name);
 args.dp = dp;
 args.whichfork = XFS_DATA_FORK;
 args.trans = tp;
 args.op_flags = XFS_DA_OP_OKNOENT;
 if (ci_name)
  args.op_flags |= XFS_DA_OP_CILOOKUP;

 if (dp->i_d.di_format == XFS_DINODE_FMT_LOCAL)
  rval = xfs_dir2_sf_lookup(&args);
 else if ((rval = xfs_dir2_isblock(tp, dp, &v)))
  return rval;
 else if (v)
  rval = xfs_dir2_block_lookup(&args);
 else if ((rval = xfs_dir2_isleaf(tp, dp, &v)))
  return rval;
 else if (v)
  rval = xfs_dir2_leaf_lookup(&args);
 else
  rval = xfs_dir2_node_lookup(&args);
 if (rval == EEXIST)
  rval = 0;
 if (!rval) {
  *inum = args.inumber;
  if (ci_name) {
   ci_name->name = args.value;
   ci_name->len = args.valuelen;
  }
 }
 return rval;
}
