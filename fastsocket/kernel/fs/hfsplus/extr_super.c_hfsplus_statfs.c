
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
typedef void* u32 ;
struct super_block {int s_blocksize; TYPE_1__* s_bdev; } ;
struct TYPE_5__ {void** val; } ;
struct kstatfs {int f_blocks; int f_bfree; int f_bavail; int f_files; int f_namelen; TYPE_2__ f_fsid; scalar_t__ f_ffree; int f_bsize; int f_type; } ;
struct dentry {struct super_block* d_sb; } ;
struct TYPE_6__ {int total_blocks; int fs_shift; int free_blocks; scalar_t__ next_cnid; } ;
struct TYPE_4__ {int bd_dev; } ;


 int HFSPLUS_MAX_STRLEN ;
 TYPE_3__ HFSPLUS_SB (struct super_block*) ;
 int HFSPLUS_SUPER_MAGIC ;
 int huge_encode_dev (int ) ;

__attribute__((used)) static int hfsplus_statfs(struct dentry *dentry, struct kstatfs *buf)
{
 struct super_block *sb = dentry->d_sb;
 u64 id = huge_encode_dev(sb->s_bdev->bd_dev);

 buf->f_type = HFSPLUS_SUPER_MAGIC;
 buf->f_bsize = sb->s_blocksize;
 buf->f_blocks = HFSPLUS_SB(sb).total_blocks << HFSPLUS_SB(sb).fs_shift;
 buf->f_bfree = HFSPLUS_SB(sb).free_blocks << HFSPLUS_SB(sb).fs_shift;
 buf->f_bavail = buf->f_bfree;
 buf->f_files = 0xFFFFFFFF;
 buf->f_ffree = 0xFFFFFFFF - HFSPLUS_SB(sb).next_cnid;
 buf->f_fsid.val[0] = (u32)id;
 buf->f_fsid.val[1] = (u32)(id >> 32);
 buf->f_namelen = HFSPLUS_MAX_STRLEN;

 return 0;
}
