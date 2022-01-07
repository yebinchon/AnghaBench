
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
struct TYPE_18__ {int op_flags; int * trans; int whichfork; TYPE_4__* dp; int hashval; int namelen; int name; } ;
typedef TYPE_5__ xfs_da_args_t ;
typedef scalar_t__ uint ;
struct xfs_name {int len; int name; } ;
struct TYPE_15__ {TYPE_1__* m_dirnameops; } ;
struct TYPE_14__ {int (* hashname ) (struct xfs_name*) ;} ;


 int ASSERT (int) ;
 int S_IFDIR ;
 int S_IFMT ;
 int XFS_DATA_FORK ;
 int XFS_DA_OP_ADDNAME ;
 int XFS_DA_OP_JUSTCHECK ;
 int XFS_DA_OP_OKNOENT ;
 scalar_t__ XFS_DINODE_FMT_LOCAL ;
 int memset (TYPE_5__*,int ,int) ;
 int stub1 (struct xfs_name*) ;
 int xfs_dir2_block_addname (TYPE_5__*) ;
 int xfs_dir2_isblock (int *,TYPE_4__*,int*) ;
 int xfs_dir2_isleaf (int *,TYPE_4__*,int*) ;
 int xfs_dir2_leaf_addname (TYPE_5__*) ;
 int xfs_dir2_node_addname (TYPE_5__*) ;
 int xfs_dir2_sf_addname (TYPE_5__*) ;

int
xfs_dir_canenter(
 xfs_trans_t *tp,
 xfs_inode_t *dp,
 struct xfs_name *name,
 uint resblks)
{
 xfs_da_args_t args;
 int rval;
 int v;

 if (resblks)
  return 0;

 ASSERT((dp->i_d.di_mode & S_IFMT) == S_IFDIR);

 memset(&args, 0, sizeof(xfs_da_args_t));
 args.name = name->name;
 args.namelen = name->len;
 args.hashval = dp->i_mount->m_dirnameops->hashname(name);
 args.dp = dp;
 args.whichfork = XFS_DATA_FORK;
 args.trans = tp;
 args.op_flags = XFS_DA_OP_JUSTCHECK | XFS_DA_OP_ADDNAME |
       XFS_DA_OP_OKNOENT;

 if (dp->i_d.di_format == XFS_DINODE_FMT_LOCAL)
  rval = xfs_dir2_sf_addname(&args);
 else if ((rval = xfs_dir2_isblock(tp, dp, &v)))
  return rval;
 else if (v)
  rval = xfs_dir2_block_addname(&args);
 else if ((rval = xfs_dir2_isleaf(tp, dp, &v)))
  return rval;
 else if (v)
  rval = xfs_dir2_leaf_addname(&args);
 else
  rval = xfs_dir2_node_addname(&args);
 return rval;
}
