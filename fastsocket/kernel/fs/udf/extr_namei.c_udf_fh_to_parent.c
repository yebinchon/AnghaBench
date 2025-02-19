
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct TYPE_2__ {int parent_generation; int parent_partref; int parent_block; } ;
struct fid {TYPE_1__ udf; } ;
struct dentry {int dummy; } ;


 int FILEID_UDF_WITH_PARENT ;
 struct dentry* udf_nfs_get_inode (struct super_block*,int ,int ,int ) ;

__attribute__((used)) static struct dentry *udf_fh_to_parent(struct super_block *sb,
           struct fid *fid, int fh_len, int fh_type)
{
 if (fh_len != 5 || fh_type != FILEID_UDF_WITH_PARENT)
  return ((void*)0);

 return udf_nfs_get_inode(sb, fid->udf.parent_block,
     fid->udf.parent_partref,
     fid->udf.parent_generation);
}
