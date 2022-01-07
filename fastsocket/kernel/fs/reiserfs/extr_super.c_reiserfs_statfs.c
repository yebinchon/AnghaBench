
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef void* u32 ;
struct reiserfs_super_block {scalar_t__ s_uuid; } ;
struct TYPE_4__ {void** val; } ;
struct kstatfs {TYPE_1__ f_fsid; int f_type; int f_bsize; scalar_t__ f_blocks; int f_bfree; int f_bavail; int f_namelen; } ;
struct dentry {TYPE_3__* d_sb; } ;
struct TYPE_6__ {int s_blocksize; } ;
struct TYPE_5__ {int s_blocksize; } ;


 int REISERFS_MAX_NAME (int ) ;
 int REISERFS_SUPER_MAGIC ;
 struct reiserfs_super_block* SB_DISK_SUPER_BLOCK (TYPE_3__*) ;
 scalar_t__ crc32_le (int ,scalar_t__,int) ;
 TYPE_2__* s ;
 scalar_t__ sb_block_count (struct reiserfs_super_block*) ;
 scalar_t__ sb_bmap_nr (struct reiserfs_super_block*) ;
 int sb_free_blocks (struct reiserfs_super_block*) ;

__attribute__((used)) static int reiserfs_statfs(struct dentry *dentry, struct kstatfs *buf)
{
 struct reiserfs_super_block *rs = SB_DISK_SUPER_BLOCK(dentry->d_sb);

 buf->f_namelen = (REISERFS_MAX_NAME(s->s_blocksize));
 buf->f_bfree = sb_free_blocks(rs);
 buf->f_bavail = buf->f_bfree;
 buf->f_blocks = sb_block_count(rs) - sb_bmap_nr(rs) - 1;
 buf->f_bsize = dentry->d_sb->s_blocksize;

 buf->f_type = REISERFS_SUPER_MAGIC;
 buf->f_fsid.val[0] = (u32)crc32_le(0, rs->s_uuid, sizeof(rs->s_uuid)/2);
 buf->f_fsid.val[1] = (u32)crc32_le(0, rs->s_uuid + sizeof(rs->s_uuid)/2,
    sizeof(rs->s_uuid)/2);

 return 0;
}
