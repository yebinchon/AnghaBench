
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct udf_inode_info {scalar_t__ i_alloc_type; int i_unique; int i_location; } ;
struct udf_fileident_bh {scalar_t__ sbh; scalar_t__ ebh; } ;
struct nameidata {int dummy; } ;
struct TYPE_4__ {int * a_ops; } ;
struct inode {int i_mode; TYPE_2__* i_sb; int i_nlink; int * i_fop; int * i_op; TYPE_1__ i_data; } ;
struct TYPE_6__ {scalar_t__ impUse; int extLocation; void* extLength; } ;
struct fileIdentDesc {TYPE_3__ icb; } ;
struct dentry {int dummy; } ;
struct allocDescImpUse {scalar_t__ impUse; } ;
typedef void* __le32 ;
struct TYPE_5__ {int s_blocksize; } ;


 scalar_t__ ICBTAG_FLAG_AD_IN_ICB ;
 struct udf_inode_info* UDF_I (struct inode*) ;
 int brelse (scalar_t__) ;
 void* cpu_to_le32 (int) ;
 int cpu_to_lelb (int ) ;
 int d_instantiate (struct dentry*,struct inode*) ;
 int iput (struct inode*) ;
 int lock_kernel () ;
 int mark_inode_dirty (struct inode*) ;
 struct fileIdentDesc* udf_add_entry (struct inode*,struct dentry*,struct udf_fileident_bh*,struct fileIdentDesc*,int*) ;
 int udf_adinicb_aops ;
 int udf_aops ;
 int udf_file_inode_operations ;
 int udf_file_operations ;
 struct inode* udf_new_inode (struct inode*,int,int*) ;
 int udf_write_fi (struct inode*,struct fileIdentDesc*,struct fileIdentDesc*,struct udf_fileident_bh*,int *,int *) ;
 int unlock_kernel () ;

__attribute__((used)) static int udf_create(struct inode *dir, struct dentry *dentry, int mode,
        struct nameidata *nd)
{
 struct udf_fileident_bh fibh;
 struct inode *inode;
 struct fileIdentDesc cfi, *fi;
 int err;
 struct udf_inode_info *iinfo;

 lock_kernel();
 inode = udf_new_inode(dir, mode, &err);
 if (!inode) {
  unlock_kernel();
  return err;
 }

 iinfo = UDF_I(inode);
 if (iinfo->i_alloc_type == ICBTAG_FLAG_AD_IN_ICB)
  inode->i_data.a_ops = &udf_adinicb_aops;
 else
  inode->i_data.a_ops = &udf_aops;
 inode->i_op = &udf_file_inode_operations;
 inode->i_fop = &udf_file_operations;
 inode->i_mode = mode;
 mark_inode_dirty(inode);

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
 if (fibh.sbh != fibh.ebh)
  brelse(fibh.ebh);
 brelse(fibh.sbh);
 unlock_kernel();
 d_instantiate(dentry, inode);

 return 0;
}
