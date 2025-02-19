
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u64 ;
typedef void* u32 ;
struct super_block {int s_blocksize; int s_magic; TYPE_1__* s_bdev; } ;
struct TYPE_7__ {void** val; } ;
struct kstatfs {int f_blocks; TYPE_3__ f_fsid; int f_namelen; int f_bfree; int f_bavail; int f_bsize; int f_type; } ;
struct dentry {struct super_block* d_sb; } ;
struct TYPE_8__ {TYPE_2__* BitMap; } ;
struct TYPE_6__ {int di_size; } ;
struct TYPE_5__ {int bd_dev; } ;


 int QNX4_NAME_MAX ;
 int huge_encode_dev (int ) ;
 int le32_to_cpu (int ) ;
 int lock_kernel () ;
 int qnx4_count_free_blocks (struct super_block*) ;
 TYPE_4__* qnx4_sb (struct super_block*) ;
 int unlock_kernel () ;

__attribute__((used)) static int qnx4_statfs(struct dentry *dentry, struct kstatfs *buf)
{
 struct super_block *sb = dentry->d_sb;
 u64 id = huge_encode_dev(sb->s_bdev->bd_dev);

 lock_kernel();

 buf->f_type = sb->s_magic;
 buf->f_bsize = sb->s_blocksize;
 buf->f_blocks = le32_to_cpu(qnx4_sb(sb)->BitMap->di_size) * 8;
 buf->f_bfree = qnx4_count_free_blocks(sb);
 buf->f_bavail = buf->f_bfree;
 buf->f_namelen = QNX4_NAME_MAX;
 buf->f_fsid.val[0] = (u32)id;
 buf->f_fsid.val[1] = (u32)(id >> 32);

 unlock_kernel();

 return 0;
}
