
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct nilfs_sb_info {int s_next_gen_lock; int s_next_generation; int s_inodes_count; int s_ifile; } ;
struct nilfs_inode_info {int i_state; int i_flags; scalar_t__ i_cno; scalar_t__ i_dir_start_lookup; int i_bmap; int i_bh; } ;
struct inode {int i_mode; scalar_t__ i_nlink; scalar_t__ i_generation; int i_ctime; int i_atime; int i_mtime; int i_ino; int i_gid; int i_uid; int i_mapping; struct super_block* i_sb; } ;
typedef int ino_t ;


 int CURRENT_TIME ;
 int ENOMEM ;
 struct inode* ERR_PTR (int) ;
 int NILFS_APPEND_FL ;
 int NILFS_DIRSYNC_FL ;
 struct nilfs_inode_info* NILFS_I (struct inode*) ;
 int NILFS_IMMUTABLE_FL ;
 int NILFS_I_BMAP ;
 int NILFS_I_NEW ;
 struct nilfs_sb_info* NILFS_SB (struct super_block*) ;
 scalar_t__ S_ISDIR (int) ;
 int S_ISGID ;
 scalar_t__ S_ISLNK (int) ;
 scalar_t__ S_ISREG (int) ;
 int __GFP_FS ;
 int atomic_inc (int *) ;
 int current_fsgid () ;
 int current_fsuid () ;
 int insert_inode_hash (struct inode*) ;
 int iput (struct inode*) ;
 int make_bad_inode (struct inode*) ;
 int mapping_gfp_mask (int ) ;
 int mapping_set_gfp_mask (int ,int) ;
 int mark_inode_dirty (struct inode*) ;
 struct inode* new_inode (struct super_block*) ;
 int nilfs_bmap_read (int ,int *) ;
 int nilfs_ifile_create_inode (int ,int *,int *) ;
 int nilfs_init_acl (struct inode*,struct inode*) ;
 int nilfs_set_inode_flags (struct inode*) ;
 int set_bit (int ,int*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ unlikely (int) ;

struct inode *nilfs_new_inode(struct inode *dir, int mode)
{
 struct super_block *sb = dir->i_sb;
 struct nilfs_sb_info *sbi = NILFS_SB(sb);
 struct inode *inode;
 struct nilfs_inode_info *ii;
 int err = -ENOMEM;
 ino_t ino;

 inode = new_inode(sb);
 if (unlikely(!inode))
  goto failed;

 mapping_set_gfp_mask(inode->i_mapping,
        mapping_gfp_mask(inode->i_mapping) & ~__GFP_FS);

 ii = NILFS_I(inode);
 ii->i_state = 1 << NILFS_I_NEW;

 err = nilfs_ifile_create_inode(sbi->s_ifile, &ino, &ii->i_bh);
 if (unlikely(err))
  goto failed_ifile_create_inode;


 atomic_inc(&sbi->s_inodes_count);

 inode->i_uid = current_fsuid();
 if (dir->i_mode & S_ISGID) {
  inode->i_gid = dir->i_gid;
  if (S_ISDIR(mode))
   mode |= S_ISGID;
 } else
  inode->i_gid = current_fsgid();

 inode->i_mode = mode;
 inode->i_ino = ino;
 inode->i_mtime = inode->i_atime = inode->i_ctime = CURRENT_TIME;

 if (S_ISREG(mode) || S_ISDIR(mode) || S_ISLNK(mode)) {
  err = nilfs_bmap_read(ii->i_bmap, ((void*)0));
  if (err < 0)
   goto failed_bmap;

  set_bit(NILFS_I_BMAP, &ii->i_state);

 }

 ii->i_flags = NILFS_I(dir)->i_flags;
 if (S_ISLNK(mode))
  ii->i_flags &= ~(NILFS_IMMUTABLE_FL | NILFS_APPEND_FL);
 if (!S_ISDIR(mode))
  ii->i_flags &= ~NILFS_DIRSYNC_FL;



 ii->i_dir_start_lookup = 0;
 ii->i_cno = 0;
 nilfs_set_inode_flags(inode);
 spin_lock(&sbi->s_next_gen_lock);
 inode->i_generation = sbi->s_next_generation++;
 spin_unlock(&sbi->s_next_gen_lock);
 insert_inode_hash(inode);

 err = nilfs_init_acl(inode, dir);
 if (unlikely(err))
  goto failed_acl;



 mark_inode_dirty(inode);
 return inode;

 failed_acl:
 failed_bmap:
 inode->i_nlink = 0;
 iput(inode);

 goto failed;

 failed_ifile_create_inode:
 make_bad_inode(inode);
 iput(inode);

 failed:
 return ERR_PTR(err);
}
