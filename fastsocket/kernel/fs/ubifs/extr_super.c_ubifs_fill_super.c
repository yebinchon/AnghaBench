
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {char* name; int unplug_io_fn; int capabilities; } ;
struct TYPE_5__ {int vol_id; int ubi_num; } ;
struct ubifs_info {scalar_t__ max_inode_sz; struct inode* ubi; TYPE_2__ bdi; int umount_mutex; TYPE_1__ vi; int di; int ltail_lnum; int lhead_lnum; int highest_inum; struct super_block* vfs_sb; int orph_new; int orph_list; int old_buds; int unclean_leb_list; int frdi_idx_list; int freeable_list; int empty_list; int uncat_list; int replay_buds; int replay_list; int idx_gc; int infos_list; void* orph_tree; void* size_tree; void* old_idx; void* buds; int cmt_wq; int bu_mutex; int mst_mutex; int log_mutex; int tnc_mutex; int lp_mutex; int commit_sem; int orphan_lock; int space_lock; int buds_lock; int cs_lock; int cnt_lock; } ;
struct ubi_volume_desc {scalar_t__ max_inode_sz; struct inode* ubi; TYPE_2__ bdi; int umount_mutex; TYPE_1__ vi; int di; int ltail_lnum; int lhead_lnum; int highest_inum; struct super_block* vfs_sb; int orph_new; int orph_list; int old_buds; int unclean_leb_list; int frdi_idx_list; int freeable_list; int empty_list; int uncat_list; int replay_buds; int replay_list; int idx_gc; int infos_list; void* orph_tree; void* size_tree; void* old_idx; void* buds; int cmt_wq; int bu_mutex; int mst_mutex; int log_mutex; int tnc_mutex; int lp_mutex; int commit_sem; int orphan_lock; int space_lock; int buds_lock; int cs_lock; int cnt_lock; } ;
struct super_block {scalar_t__ s_maxbytes; int s_root; int * s_op; int s_blocksize_bits; int s_blocksize; int s_magic; struct ubifs_info* s_fs_info; TYPE_2__* s_bdi; } ;
struct inode {int dummy; } ;


 int BDI_CAP_MAP_COPY ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 scalar_t__ IS_ERR (struct inode*) ;
 scalar_t__ MAX_LFS_FILESIZE ;
 int PTR_ERR (struct inode*) ;
 void* RB_ROOT ;
 int UBIFS_BLOCK_SHIFT ;
 int UBIFS_BLOCK_SIZE ;
 int UBIFS_FIRST_INO ;
 int UBIFS_LOG_LNUM ;
 int UBIFS_ROOT_INO ;
 int UBIFS_SUPER_MAGIC ;
 int UBI_READWRITE ;
 int bdi_destroy (TYPE_2__*) ;
 int bdi_init (TYPE_2__*) ;
 int bdi_register (TYPE_2__*,int *,char*,int ,int ) ;
 int d_alloc_root (struct inode*) ;
 int default_unplug_io_fn ;
 int init_rwsem (int *) ;
 int init_waitqueue_head (int *) ;
 int iput (struct inode*) ;
 scalar_t__ key_max_inode_size (struct ubifs_info*) ;
 int kfree (struct ubifs_info*) ;
 struct ubifs_info* kzalloc (int,int ) ;
 int mount_ubifs (struct ubifs_info*) ;
 int mutex_init (int *) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int spin_lock_init (int *) ;
 int ubi_close_volume (struct inode*) ;
 int ubi_get_device_info (int ,int *) ;
 int ubi_get_volume_info (struct ubifs_info*,TYPE_1__*) ;
 struct inode* ubi_open_volume (int ,int ,int ) ;
 int ubifs_assert (int) ;
 struct inode* ubifs_iget (struct super_block*,int ) ;
 int ubifs_parse_options (struct ubifs_info*,void*,int ) ;
 int ubifs_super_operations ;
 int ubifs_umount (struct ubifs_info*) ;

__attribute__((used)) static int ubifs_fill_super(struct super_block *sb, void *data, int silent)
{
 struct ubi_volume_desc *ubi = sb->s_fs_info;
 struct ubifs_info *c;
 struct inode *root;
 int err;

 c = kzalloc(sizeof(struct ubifs_info), GFP_KERNEL);
 if (!c)
  return -ENOMEM;

 spin_lock_init(&c->cnt_lock);
 spin_lock_init(&c->cs_lock);
 spin_lock_init(&c->buds_lock);
 spin_lock_init(&c->space_lock);
 spin_lock_init(&c->orphan_lock);
 init_rwsem(&c->commit_sem);
 mutex_init(&c->lp_mutex);
 mutex_init(&c->tnc_mutex);
 mutex_init(&c->log_mutex);
 mutex_init(&c->mst_mutex);
 mutex_init(&c->umount_mutex);
 mutex_init(&c->bu_mutex);
 init_waitqueue_head(&c->cmt_wq);
 c->buds = RB_ROOT;
 c->old_idx = RB_ROOT;
 c->size_tree = RB_ROOT;
 c->orph_tree = RB_ROOT;
 INIT_LIST_HEAD(&c->infos_list);
 INIT_LIST_HEAD(&c->idx_gc);
 INIT_LIST_HEAD(&c->replay_list);
 INIT_LIST_HEAD(&c->replay_buds);
 INIT_LIST_HEAD(&c->uncat_list);
 INIT_LIST_HEAD(&c->empty_list);
 INIT_LIST_HEAD(&c->freeable_list);
 INIT_LIST_HEAD(&c->frdi_idx_list);
 INIT_LIST_HEAD(&c->unclean_leb_list);
 INIT_LIST_HEAD(&c->old_buds);
 INIT_LIST_HEAD(&c->orph_list);
 INIT_LIST_HEAD(&c->orph_new);

 c->vfs_sb = sb;
 c->highest_inum = UBIFS_FIRST_INO;
 c->lhead_lnum = c->ltail_lnum = UBIFS_LOG_LNUM;

 ubi_get_volume_info(ubi, &c->vi);
 ubi_get_device_info(c->vi.ubi_num, &c->di);


 c->ubi = ubi_open_volume(c->vi.ubi_num, c->vi.vol_id, UBI_READWRITE);
 if (IS_ERR(c->ubi)) {
  err = PTR_ERR(c->ubi);
  goto out_free;
 }
 c->bdi.name = "ubifs",
 c->bdi.capabilities = BDI_CAP_MAP_COPY;
 c->bdi.unplug_io_fn = default_unplug_io_fn;
 err = bdi_init(&c->bdi);
 if (err)
  goto out_close;
 err = bdi_register(&c->bdi, ((void*)0), "ubifs_%d_%d",
      c->vi.ubi_num, c->vi.vol_id);
 if (err)
  goto out_bdi;

 err = ubifs_parse_options(c, data, 0);
 if (err)
  goto out_bdi;

 sb->s_bdi = &c->bdi;
 sb->s_fs_info = c;
 sb->s_magic = UBIFS_SUPER_MAGIC;
 sb->s_blocksize = UBIFS_BLOCK_SIZE;
 sb->s_blocksize_bits = UBIFS_BLOCK_SHIFT;
 sb->s_maxbytes = c->max_inode_sz = key_max_inode_size(c);
 if (c->max_inode_sz > MAX_LFS_FILESIZE)
  sb->s_maxbytes = c->max_inode_sz = MAX_LFS_FILESIZE;
 sb->s_op = &ubifs_super_operations;

 mutex_lock(&c->umount_mutex);
 err = mount_ubifs(c);
 if (err) {
  ubifs_assert(err < 0);
  goto out_unlock;
 }


 root = ubifs_iget(sb, UBIFS_ROOT_INO);
 if (IS_ERR(root)) {
  err = PTR_ERR(root);
  goto out_umount;
 }

 sb->s_root = d_alloc_root(root);
 if (!sb->s_root)
  goto out_iput;

 mutex_unlock(&c->umount_mutex);
 return 0;

out_iput:
 iput(root);
out_umount:
 ubifs_umount(c);
out_unlock:
 mutex_unlock(&c->umount_mutex);
out_bdi:
 bdi_destroy(&c->bdi);
out_close:
 ubi_close_volume(c->ubi);
out_free:
 kfree(c);
 return err;
}
