
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
typedef void* u32 ;
struct super_block {int s_blocksize; TYPE_1__* s_bdev; } ;
struct TYPE_4__ {void** val; } ;
struct kstatfs {int f_namelen; TYPE_2__ f_fsid; int f_ffree; scalar_t__ f_files; int f_bavail; int f_bfree; int f_blocks; int f_bsize; int f_type; } ;
struct dentry {struct super_block* d_sb; } ;
struct bfs_sb_info {int si_freei; scalar_t__ si_lasti; int si_freeb; int si_blocks; } ;
struct TYPE_3__ {int bd_dev; } ;


 int BFS_MAGIC ;
 int BFS_NAMELEN ;
 scalar_t__ BFS_ROOT_INO ;
 struct bfs_sb_info* BFS_SB (struct super_block*) ;
 int huge_encode_dev (int ) ;

__attribute__((used)) static int bfs_statfs(struct dentry *dentry, struct kstatfs *buf)
{
 struct super_block *s = dentry->d_sb;
 struct bfs_sb_info *info = BFS_SB(s);
 u64 id = huge_encode_dev(s->s_bdev->bd_dev);
 buf->f_type = BFS_MAGIC;
 buf->f_bsize = s->s_blocksize;
 buf->f_blocks = info->si_blocks;
 buf->f_bfree = buf->f_bavail = info->si_freeb;
 buf->f_files = info->si_lasti + 1 - BFS_ROOT_INO;
 buf->f_ffree = info->si_freei;
 buf->f_fsid.val[0] = (u32)id;
 buf->f_fsid.val[1] = (u32)(id >> 32);
 buf->f_namelen = BFS_NAMELEN;
 return 0;
}
