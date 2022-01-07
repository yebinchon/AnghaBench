
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct kernel_lb_addr {scalar_t__ partitionReferenceNum; int logicalBlockNum; } ;
struct inode {int i_generation; int i_mode; } ;
struct TYPE_5__ {int parent_generation; scalar_t__ parent_partref; int parent_block; int generation; scalar_t__ partref; int block; } ;
struct fid {TYPE_2__ udf; } ;
struct dentry {int d_lock; TYPE_1__* d_parent; struct inode* d_inode; } ;
typedef int __u32 ;
struct TYPE_6__ {struct kernel_lb_addr i_location; } ;
struct TYPE_4__ {struct inode* d_inode; } ;


 int FILEID_UDF_WITHOUT_PARENT ;
 int FILEID_UDF_WITH_PARENT ;
 int S_ISDIR (int ) ;
 TYPE_3__* UDF_I (struct inode*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int udf_encode_fh(struct dentry *de, __u32 *fh, int *lenp,
    int connectable)
{
 int len = *lenp;
 struct inode *inode = de->d_inode;
 struct kernel_lb_addr location = UDF_I(inode)->i_location;
 struct fid *fid = (struct fid *)fh;
 int type = FILEID_UDF_WITHOUT_PARENT;

 if (len < 3 || (connectable && len < 5))
  return 255;

 *lenp = 3;
 fid->udf.block = location.logicalBlockNum;
 fid->udf.partref = location.partitionReferenceNum;
 fid->udf.parent_partref = 0;
 fid->udf.generation = inode->i_generation;

 if (connectable && !S_ISDIR(inode->i_mode)) {
  spin_lock(&de->d_lock);
  inode = de->d_parent->d_inode;
  location = UDF_I(inode)->i_location;
  fid->udf.parent_block = location.logicalBlockNum;
  fid->udf.parent_partref = location.partitionReferenceNum;
  fid->udf.parent_generation = inode->i_generation;
  spin_unlock(&de->d_lock);
  *lenp = 5;
  type = FILEID_UDF_WITH_PARENT;
 }

 return type;
}
