
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
typedef void* u32 ;
struct udf_sb_info {size_t s_partition; TYPE_2__* s_partmaps; int * s_lvid_bh; } ;
struct super_block {int s_blocksize; TYPE_1__* s_bdev; } ;
struct logicalVolIntegrityDescImpUse {int numDirs; int numFiles; } ;
struct TYPE_6__ {void** val; } ;
struct kstatfs {TYPE_3__ f_fsid; scalar_t__ f_namelen; scalar_t__ f_bfree; scalar_t__ f_ffree; scalar_t__ f_files; scalar_t__ f_bavail; int f_blocks; int f_bsize; int f_type; } ;
struct dentry {struct super_block* d_sb; } ;
struct TYPE_5__ {int s_partition_len; } ;
struct TYPE_4__ {int bd_dev; } ;


 scalar_t__ UDF_NAME_LEN ;
 struct udf_sb_info* UDF_SB (struct super_block*) ;
 int UDF_SUPER_MAGIC ;
 int huge_encode_dev (int ) ;
 scalar_t__ le32_to_cpu (int ) ;
 scalar_t__ udf_count_free (struct super_block*) ;
 struct logicalVolIntegrityDescImpUse* udf_sb_lvidiu (struct udf_sb_info*) ;

__attribute__((used)) static int udf_statfs(struct dentry *dentry, struct kstatfs *buf)
{
 struct super_block *sb = dentry->d_sb;
 struct udf_sb_info *sbi = UDF_SB(sb);
 struct logicalVolIntegrityDescImpUse *lvidiu;
 u64 id = huge_encode_dev(sb->s_bdev->bd_dev);

 if (sbi->s_lvid_bh != ((void*)0))
  lvidiu = udf_sb_lvidiu(sbi);
 else
  lvidiu = ((void*)0);

 buf->f_type = UDF_SUPER_MAGIC;
 buf->f_bsize = sb->s_blocksize;
 buf->f_blocks = sbi->s_partmaps[sbi->s_partition].s_partition_len;
 buf->f_bfree = udf_count_free(sb);
 buf->f_bavail = buf->f_bfree;
 buf->f_files = (lvidiu != ((void*)0) ? (le32_to_cpu(lvidiu->numFiles) +
       le32_to_cpu(lvidiu->numDirs)) : 0)
   + buf->f_bfree;
 buf->f_ffree = buf->f_bfree;
 buf->f_namelen = UDF_NAME_LEN - 2;
 buf->f_fsid.val[0] = (u32)id;
 buf->f_fsid.val[1] = (u32)(id >> 32);

 return 0;
}
