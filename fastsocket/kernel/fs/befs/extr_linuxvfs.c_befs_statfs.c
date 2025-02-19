
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
struct kstatfs {int f_namelen; TYPE_2__ f_fsid; scalar_t__ f_ffree; scalar_t__ f_files; scalar_t__ f_bfree; scalar_t__ f_bavail; scalar_t__ f_blocks; int f_bsize; int f_type; } ;
struct dentry {struct super_block* d_sb; } ;
struct TYPE_6__ {scalar_t__ used_blocks; scalar_t__ num_blocks; } ;
struct TYPE_4__ {int bd_dev; } ;


 int BEFS_NAME_LEN ;
 TYPE_3__* BEFS_SB (struct super_block*) ;
 int BEFS_SUPER_MAGIC ;
 int befs_debug (struct super_block*,char*) ;
 int huge_encode_dev (int ) ;

__attribute__((used)) static int
befs_statfs(struct dentry *dentry, struct kstatfs *buf)
{
 struct super_block *sb = dentry->d_sb;
 u64 id = huge_encode_dev(sb->s_bdev->bd_dev);

 befs_debug(sb, "---> befs_statfs()");

 buf->f_type = BEFS_SUPER_MAGIC;
 buf->f_bsize = sb->s_blocksize;
 buf->f_blocks = BEFS_SB(sb)->num_blocks;
 buf->f_bfree = BEFS_SB(sb)->num_blocks - BEFS_SB(sb)->used_blocks;
 buf->f_bavail = buf->f_bfree;
 buf->f_files = 0;
 buf->f_ffree = 0;
 buf->f_fsid.val[0] = (u32)id;
 buf->f_fsid.val[1] = (u32)(id >> 32);
 buf->f_namelen = BEFS_NAME_LEN;

 befs_debug(sb, "<--- befs_statfs()");

 return 0;
}
