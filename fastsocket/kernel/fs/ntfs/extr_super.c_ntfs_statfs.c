
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct TYPE_8__ {int* val; } ;
struct kstatfs {int f_bsize; int f_blocks; long long f_bavail; long long f_bfree; long long f_files; int f_namelen; TYPE_1__ f_fsid; int f_ffree; int f_type; } ;
struct dentry {struct super_block* d_sb; } ;
typedef long long s64 ;
typedef int pgoff_t ;
struct TYPE_9__ {int nr_clusters; int cluster_size_bits; long long mft_record_size_bits; int serial_no; int mftbmp_lock; int mft_ino; } ;
typedef TYPE_2__ ntfs_volume ;
struct TYPE_10__ {int initialized_size; int size_lock; } ;
typedef TYPE_3__ ntfs_inode ;


 TYPE_3__* NTFS_I (int ) ;
 int NTFS_MAX_NAME_LEN ;
 TYPE_2__* NTFS_SB (struct super_block*) ;
 int NTFS_SB_MAGIC ;
 int PAGE_CACHE_SHIFT ;
 int PAGE_CACHE_SIZE ;
 int __get_nr_free_mft_records (TYPE_2__*,long long,int) ;
 int down_read (int *) ;
 int get_nr_free_clusters (TYPE_2__*) ;
 long long i_size_read (int ) ;
 int ntfs_debug (char*) ;
 int read_lock_irqsave (int *,unsigned long) ;
 int read_unlock_irqrestore (int *,unsigned long) ;
 int up_read (int *) ;

__attribute__((used)) static int ntfs_statfs(struct dentry *dentry, struct kstatfs *sfs)
{
 struct super_block *sb = dentry->d_sb;
 s64 size;
 ntfs_volume *vol = NTFS_SB(sb);
 ntfs_inode *mft_ni = NTFS_I(vol->mft_ino);
 pgoff_t max_index;
 unsigned long flags;

 ntfs_debug("Entering.");

 sfs->f_type = NTFS_SB_MAGIC;

 sfs->f_bsize = PAGE_CACHE_SIZE;





 sfs->f_blocks = vol->nr_clusters << vol->cluster_size_bits >>
    PAGE_CACHE_SHIFT;

 size = get_nr_free_clusters(vol) << vol->cluster_size_bits >>
    PAGE_CACHE_SHIFT;
 if (size < 0LL)
  size = 0LL;

 sfs->f_bavail = sfs->f_bfree = size;

 down_read(&vol->mftbmp_lock);
 read_lock_irqsave(&mft_ni->size_lock, flags);
 size = i_size_read(vol->mft_ino) >> vol->mft_record_size_bits;





 max_index = ((((mft_ni->initialized_size >> vol->mft_record_size_bits)
   + 7) >> 3) + PAGE_CACHE_SIZE - 1) >> PAGE_CACHE_SHIFT;
 read_unlock_irqrestore(&mft_ni->size_lock, flags);

 sfs->f_files = size;

 sfs->f_ffree = __get_nr_free_mft_records(vol, size, max_index);
 up_read(&vol->mftbmp_lock);
 sfs->f_fsid.val[0] = vol->serial_no & 0xffffffff;
 sfs->f_fsid.val[1] = (vol->serial_no >> 32) & 0xffffffff;

 sfs->f_namelen = NTFS_MAX_NAME_LEN;
 return 0;
}
