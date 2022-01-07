
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int s_time_gran; struct dentry* s_root; int * s_op; int s_magic; int s_blocksize_bits; int s_blocksize; int s_maxbytes; struct hugetlbfs_sb_info* s_fs_info; } ;
struct inode {int dummy; } ;
struct hugetlbfs_sb_info {int max_inodes; int free_inodes; struct hugetlbfs_sb_info* spool; int stat_lock; int * hstate; } ;
struct hugetlbfs_config {int nr_blocks; int nr_inodes; int mode; int gid; int uid; int * hstate; } ;
struct dentry {int dummy; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int HUGETLBFS_MAGIC ;
 int MAX_LFS_FILESIZE ;
 int S_IFDIR ;
 int current_fsgid () ;
 int current_fsuid () ;
 struct dentry* d_alloc_root (struct inode*) ;
 int default_hstate ;
 int huge_page_shift (int *) ;
 int huge_page_size (int *) ;
 struct hugetlbfs_sb_info* hugepage_new_subpool (int) ;
 struct inode* hugetlbfs_get_inode (struct super_block*,int ,int ,int,int ) ;
 int hugetlbfs_ops ;
 int hugetlbfs_parse_options (void*,struct hugetlbfs_config*) ;
 int iput (struct inode*) ;
 int kfree (struct hugetlbfs_sb_info*) ;
 struct hugetlbfs_sb_info* kmalloc (int,int ) ;
 int save_mount_options (struct super_block*,void*) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static int
hugetlbfs_fill_super(struct super_block *sb, void *data, int silent)
{
 struct inode * inode;
 struct dentry * root;
 int ret;
 struct hugetlbfs_config config;
 struct hugetlbfs_sb_info *sbinfo;

 save_mount_options(sb, data);

 config.nr_blocks = -1;
 config.nr_inodes = -1;
 config.uid = current_fsuid();
 config.gid = current_fsgid();
 config.mode = 0755;
 config.hstate = &default_hstate;
 ret = hugetlbfs_parse_options(data, &config);
 if (ret)
  return ret;

 sbinfo = kmalloc(sizeof(struct hugetlbfs_sb_info), GFP_KERNEL);
 if (!sbinfo)
  return -ENOMEM;
 sb->s_fs_info = sbinfo;
 sbinfo->hstate = config.hstate;
 spin_lock_init(&sbinfo->stat_lock);
 sbinfo->max_inodes = config.nr_inodes;
 sbinfo->free_inodes = config.nr_inodes;
 sbinfo->spool = ((void*)0);
 if (config.nr_blocks != -1) {
  sbinfo->spool = hugepage_new_subpool(config.nr_blocks);
  if (!sbinfo->spool)
   goto out_free;
 }
 sb->s_maxbytes = MAX_LFS_FILESIZE;
 sb->s_blocksize = huge_page_size(config.hstate);
 sb->s_blocksize_bits = huge_page_shift(config.hstate);
 sb->s_magic = HUGETLBFS_MAGIC;
 sb->s_op = &hugetlbfs_ops;
 sb->s_time_gran = 1;
 inode = hugetlbfs_get_inode(sb, config.uid, config.gid,
     S_IFDIR | config.mode, 0);
 if (!inode)
  goto out_free;

 root = d_alloc_root(inode);
 if (!root) {
  iput(inode);
  goto out_free;
 }
 sb->s_root = root;
 return 0;
out_free:
 if (sbinfo->spool)
  kfree(sbinfo->spool);
 kfree(sbinfo);
 return -ENOMEM;
}
