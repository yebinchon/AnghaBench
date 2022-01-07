
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
typedef void* u32 ;
struct super_block {int s_blocksize_bits; int s_blocksize; TYPE_1__* s_bdev; } ;
struct TYPE_5__ {void** val; } ;
struct kstatfs {int f_blocks; int f_namelen; TYPE_2__ f_fsid; scalar_t__ f_ffree; int f_files; scalar_t__ f_bavail; scalar_t__ f_bfree; int f_bsize; int f_type; } ;
struct dentry {struct super_block* d_sb; } ;
struct TYPE_6__ {int s_nzones; int s_log_zone_size; int s_ninodes; } ;
struct TYPE_4__ {int bd_dev; } ;


 TYPE_3__* ISOFS_SB (struct super_block*) ;
 int ISOFS_SUPER_MAGIC ;
 int NAME_MAX ;
 int huge_encode_dev (int ) ;

__attribute__((used)) static int isofs_statfs (struct dentry *dentry, struct kstatfs *buf)
{
 struct super_block *sb = dentry->d_sb;
 u64 id = huge_encode_dev(sb->s_bdev->bd_dev);

 buf->f_type = ISOFS_SUPER_MAGIC;
 buf->f_bsize = sb->s_blocksize;
 buf->f_blocks = (ISOFS_SB(sb)->s_nzones
  << (ISOFS_SB(sb)->s_log_zone_size - sb->s_blocksize_bits));
 buf->f_bfree = 0;
 buf->f_bavail = 0;
 buf->f_files = ISOFS_SB(sb)->s_ninodes;
 buf->f_ffree = 0;
 buf->f_fsid.val[0] = (u32)id;
 buf->f_fsid.val[1] = (u32)(id >> 32);
 buf->f_namelen = NAME_MAX;
 return 0;
}
