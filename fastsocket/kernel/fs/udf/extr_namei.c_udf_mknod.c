
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct udf_inode_info {int i_unique; scalar_t__ i_alloc_type; int i_location; } ;
struct udf_fileident_bh {scalar_t__ sbh; scalar_t__ ebh; } ;
struct inode {TYPE_1__* i_sb; int i_nlink; int i_uid; } ;
struct TYPE_4__ {scalar_t__ impUse; int extLocation; void* extLength; } ;
struct fileIdentDesc {TYPE_2__ icb; } ;
struct dentry {int dummy; } ;
struct allocDescImpUse {scalar_t__ impUse; } ;
typedef int dev_t ;
typedef void* __le32 ;
struct TYPE_3__ {int s_blocksize; } ;


 int EINVAL ;
 int EIO ;
 scalar_t__ ICBTAG_FLAG_AD_IN_ICB ;
 struct udf_inode_info* UDF_I (struct inode*) ;
 int brelse (scalar_t__) ;
 void* cpu_to_le32 (int) ;
 int cpu_to_lelb (int ) ;
 int current_fsuid () ;
 int d_instantiate (struct dentry*,struct inode*) ;
 int init_special_inode (struct inode*,int,int ) ;
 int iput (struct inode*) ;
 int lock_kernel () ;
 int mark_inode_dirty (struct inode*) ;
 int old_valid_dev (int ) ;
 struct fileIdentDesc* udf_add_entry (struct inode*,struct dentry*,struct udf_fileident_bh*,struct fileIdentDesc*,int*) ;
 struct inode* udf_new_inode (struct inode*,int,int*) ;
 int udf_write_fi (struct inode*,struct fileIdentDesc*,struct fileIdentDesc*,struct udf_fileident_bh*,int *,int *) ;
 int unlock_kernel () ;

__attribute__((used)) static int udf_mknod(struct inode *dir, struct dentry *dentry, int mode,
       dev_t rdev)
{
 struct inode *inode;
 struct udf_fileident_bh fibh;
 struct fileIdentDesc cfi, *fi;
 int err;
 struct udf_inode_info *iinfo;

 if (!old_valid_dev(rdev))
  return -EINVAL;

 lock_kernel();
 err = -EIO;
 inode = udf_new_inode(dir, mode, &err);
 if (!inode)
  goto out;

 iinfo = UDF_I(inode);
 inode->i_uid = current_fsuid();
 init_special_inode(inode, mode, rdev);
 fi = udf_add_entry(dir, dentry, &fibh, &cfi, &err);
 if (!fi) {
  inode->i_nlink--;
  mark_inode_dirty(inode);
  iput(inode);
  unlock_kernel();
  return err;
 }
 cfi.icb.extLength = cpu_to_le32(inode->i_sb->s_blocksize);
 cfi.icb.extLocation = cpu_to_lelb(iinfo->i_location);
 *(__le32 *)((struct allocDescImpUse *)cfi.icb.impUse)->impUse =
  cpu_to_le32(iinfo->i_unique & 0x00000000FFFFFFFFUL);
 udf_write_fi(dir, &cfi, fi, &fibh, ((void*)0), ((void*)0));
 if (UDF_I(dir)->i_alloc_type == ICBTAG_FLAG_AD_IN_ICB)
  mark_inode_dirty(dir);
 mark_inode_dirty(inode);

 if (fibh.sbh != fibh.ebh)
  brelse(fibh.ebh);
 brelse(fibh.sbh);
 d_instantiate(dentry, inode);
 err = 0;

out:
 unlock_kernel();
 return err;
}
