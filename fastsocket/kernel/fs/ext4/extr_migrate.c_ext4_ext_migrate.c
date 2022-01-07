
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct list_blocks_struct {int dummy; } ;
struct inode {scalar_t__ i_blocks; int i_ino; int i_nlink; TYPE_2__* i_sb; int i_mode; } ;
struct ext4_inode_info {scalar_t__* i_data; int i_data_sem; } ;
typedef int lb ;
typedef struct inode handle_t ;
typedef scalar_t__ ext4_lblk_t ;
typedef int __u32 ;
typedef scalar_t__ __le32 ;
struct TYPE_7__ {int s_blocksize; TYPE_1__* s_root; } ;
struct TYPE_6__ {int d_inode; } ;


 int EINVAL ;
 int ENOMEM ;
 int EXT4_DATA_TRANS_BLOCKS (TYPE_2__*) ;
 size_t EXT4_DIND_BLOCK ;
 int EXT4_FEATURE_INCOMPAT_EXTENTS ;
 int EXT4_HAS_INCOMPAT_FEATURE (TYPE_2__*,int ) ;
 struct ext4_inode_info* EXT4_I (struct inode*) ;
 int EXT4_INDEX_EXTRA_TRANS_BLOCKS ;
 size_t EXT4_IND_BLOCK ;
 int EXT4_INODES_PER_GROUP (TYPE_2__*) ;
 int EXT4_INODE_EXTENTS ;
 int EXT4_MAXQUOTAS_INIT_BLOCKS (TYPE_2__*) ;
 int EXT4_NDIR_BLOCKS ;
 int EXT4_STATE_EXT_MIGRATE ;
 size_t EXT4_TIND_BLOCK ;
 scalar_t__ IS_ERR (struct inode*) ;
 int PTR_ERR (struct inode*) ;
 int S_IFREG ;
 scalar_t__ S_ISLNK (int ) ;
 int down_read (int *) ;
 int ext4_ext_swap_inode_data (struct inode*,struct inode*,struct inode*) ;
 int ext4_ext_tree_init (struct inode*,struct inode*) ;
 scalar_t__ ext4_journal_extend (struct inode*,int) ;
 int ext4_journal_restart (struct inode*,int) ;
 struct inode* ext4_journal_start (struct inode*,int) ;
 int ext4_journal_stop (struct inode*) ;
 struct inode* ext4_new_inode (struct inode*,int ,int ,int ,int) ;
 int ext4_orphan_add (struct inode*,struct inode*) ;
 int ext4_set_inode_state (struct inode*,int ) ;
 scalar_t__ ext4_test_inode_flag (struct inode*,int ) ;
 int finish_range (struct inode*,struct inode*,struct list_blocks_struct*) ;
 int free_ext_block (struct inode*,struct inode*) ;
 int i_size_read (struct inode*) ;
 int i_size_write (struct inode*,int ) ;
 int iput (struct inode*) ;
 int le32_to_cpu (scalar_t__) ;
 int memset (struct list_blocks_struct*,int ,int) ;
 int unlock_new_inode (struct inode*) ;
 int up_read (int *) ;
 int update_dind_extent_range (struct inode*,struct inode*,int ,scalar_t__*,struct list_blocks_struct*) ;
 int update_extent_range (struct inode*,struct inode*,int ,scalar_t__,struct list_blocks_struct*) ;
 int update_ind_extent_range (struct inode*,struct inode*,int ,scalar_t__*,struct list_blocks_struct*) ;
 int update_tind_extent_range (struct inode*,struct inode*,int ,scalar_t__*,struct list_blocks_struct*) ;

int ext4_ext_migrate(struct inode *inode)
{
 handle_t *handle;
 int retval = 0, i;
 __le32 *i_data;
 ext4_lblk_t blk_count = 0;
 struct ext4_inode_info *ei;
 struct inode *tmp_inode = ((void*)0);
 struct list_blocks_struct lb;
 unsigned long max_entries;
 __u32 goal;





 if (!EXT4_HAS_INCOMPAT_FEATURE(inode->i_sb,
           EXT4_FEATURE_INCOMPAT_EXTENTS) ||
     (ext4_test_inode_flag(inode, EXT4_INODE_EXTENTS)))
  return -EINVAL;

 if (S_ISLNK(inode->i_mode) && inode->i_blocks == 0)



  return retval;

 handle = ext4_journal_start(inode,
     EXT4_DATA_TRANS_BLOCKS(inode->i_sb) +
     EXT4_INDEX_EXTRA_TRANS_BLOCKS + 3 +
     EXT4_MAXQUOTAS_INIT_BLOCKS(inode->i_sb)
     + 1);
 if (IS_ERR(handle)) {
  retval = PTR_ERR(handle);
  return retval;
 }
 goal = (((inode->i_ino - 1) / EXT4_INODES_PER_GROUP(inode->i_sb)) *
  EXT4_INODES_PER_GROUP(inode->i_sb)) + 1;
 tmp_inode = ext4_new_inode(handle, inode->i_sb->s_root->d_inode,
       S_IFREG, 0, goal);
 if (IS_ERR(tmp_inode)) {
  retval = -ENOMEM;
  ext4_journal_stop(handle);
  return retval;
 }
 i_size_write(tmp_inode, i_size_read(inode));
 tmp_inode->i_nlink = 1;

 ext4_ext_tree_init(handle, tmp_inode);
 ext4_orphan_add(handle, tmp_inode);
 ext4_journal_stop(handle);
 down_read((&EXT4_I(inode)->i_data_sem));
 ext4_set_inode_state(inode, EXT4_STATE_EXT_MIGRATE);
 up_read((&EXT4_I(inode)->i_data_sem));

 handle = ext4_journal_start(inode, 1);

 ei = EXT4_I(inode);
 i_data = ei->i_data;
 memset(&lb, 0, sizeof(lb));


 max_entries = inode->i_sb->s_blocksize >> 2;
 for (i = 0; i < EXT4_NDIR_BLOCKS; i++, blk_count++) {
  if (i_data[i]) {
   retval = update_extent_range(handle, tmp_inode,
      le32_to_cpu(i_data[i]),
      blk_count, &lb);
   if (retval)
    goto err_out;
  }
 }
 if (i_data[EXT4_IND_BLOCK]) {
  retval = update_ind_extent_range(handle, tmp_inode,
     le32_to_cpu(i_data[EXT4_IND_BLOCK]),
     &blk_count, &lb);
   if (retval)
    goto err_out;
 } else
  blk_count += max_entries;
 if (i_data[EXT4_DIND_BLOCK]) {
  retval = update_dind_extent_range(handle, tmp_inode,
     le32_to_cpu(i_data[EXT4_DIND_BLOCK]),
     &blk_count, &lb);
   if (retval)
    goto err_out;
 } else
  blk_count += max_entries * max_entries;
 if (i_data[EXT4_TIND_BLOCK]) {
  retval = update_tind_extent_range(handle, tmp_inode,
     le32_to_cpu(i_data[EXT4_TIND_BLOCK]),
     &blk_count, &lb);
   if (retval)
    goto err_out;
 }



 retval = finish_range(handle, tmp_inode, &lb);
err_out:
 if (retval)




  free_ext_block(handle, tmp_inode);
 else {
  retval = ext4_ext_swap_inode_data(handle, inode, tmp_inode);
  if (retval)




   free_ext_block(handle, tmp_inode);
 }


 if (ext4_journal_extend(handle, 1) != 0)
  ext4_journal_restart(handle, 1);




 i_size_write(tmp_inode, 0);
 tmp_inode->i_blocks = 0;


 ext4_ext_tree_init(handle, tmp_inode);






 tmp_inode->i_nlink = 0;

 ext4_journal_stop(handle);
 unlock_new_inode(tmp_inode);
 iput(tmp_inode);

 return retval;
}
