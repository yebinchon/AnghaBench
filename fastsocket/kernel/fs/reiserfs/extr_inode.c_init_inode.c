
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct treepath {int dummy; } ;
struct stat_data_v1 {int dummy; } ;
struct stat_data {int dummy; } ;
struct item_head {int ih_key; } ;
struct TYPE_13__ {scalar_t__ tv_nsec; int tv_sec; } ;
struct TYPE_12__ {scalar_t__ tv_nsec; int tv_sec; } ;
struct TYPE_11__ {scalar_t__ tv_nsec; int tv_sec; } ;
struct inode {unsigned long i_blocks; int i_mode; int * i_op; TYPE_1__* i_mapping; int * i_fop; void* i_generation; TYPE_5__ i_atime; TYPE_4__ i_mtime; TYPE_3__ i_ctime; int i_gid; int i_size; int i_uid; int i_nlink; TYPE_2__* i_sb; } ;
struct buffer_head {int dummy; } ;
typedef int __u32 ;
struct TYPE_15__ {int i_attrs; scalar_t__ i_first_direct_byte; int i_flags; int i_mmap; int * i_jl; scalar_t__ i_trans_id; scalar_t__ i_prealloc_count; scalar_t__ i_prealloc_block; int i_prealloc_list; } ;
struct TYPE_14__ {int k_dir_id; } ;
struct TYPE_10__ {int s_blocksize; } ;
struct TYPE_9__ {int * a_ops; } ;


 scalar_t__ B_I_PITEM (struct buffer_head*,struct item_head*) ;
 int INIT_LIST_HEAD (int *) ;
 TYPE_6__* INODE_PKEY (struct inode*) ;
 int KEY_FORMAT_3_5 ;
 int KEY_FORMAT_3_6 ;
 struct item_head* PATH_PITEM_HEAD (struct treepath*) ;
 struct buffer_head* PATH_PLAST_BUFFER (struct treepath*) ;
 TYPE_7__* REISERFS_I (struct inode*) ;
 int SD_V1_SIZE ;
 int SD_V2_SIZE ;
 int STAT_DATA_V1 ;
 int STAT_DATA_V2 ;
 scalar_t__ S_ISBLK (int ) ;
 scalar_t__ S_ISCHR (int ) ;
 scalar_t__ S_ISDIR (int ) ;
 scalar_t__ S_ISLNK (int ) ;
 scalar_t__ S_ISREG (int ) ;
 unsigned long _ROUND_UP (unsigned long,int) ;
 int copy_key (TYPE_6__*,int *) ;
 int i_nopack_mask ;
 int init_special_inode (struct inode*,int ,int ) ;
 int inode_set_bytes (struct inode*,int ) ;
 void* le32_to_cpu (int ) ;
 int mutex_init (int *) ;
 int new_decode_dev (int ) ;
 int pathrelse (struct treepath*) ;
 int reiserfs_address_space_operations ;
 int reiserfs_dir_inode_operations ;
 int reiserfs_dir_operations ;
 int reiserfs_file_inode_operations ;
 int reiserfs_file_operations ;
 int reiserfs_init_xattr_rwsem (struct inode*) ;
 int reiserfs_special_inode_operations ;
 int reiserfs_symlink_inode_operations ;
 int sd_attrs_to_i_attrs (int ,struct inode*) ;
 int sd_v1_atime (struct stat_data_v1*) ;
 unsigned long sd_v1_blocks (struct stat_data_v1*) ;
 int sd_v1_ctime (struct stat_data_v1*) ;
 scalar_t__ sd_v1_first_direct_byte (struct stat_data_v1*) ;
 int sd_v1_gid (struct stat_data_v1*) ;
 int sd_v1_mode (struct stat_data_v1*) ;
 int sd_v1_mtime (struct stat_data_v1*) ;
 int sd_v1_nlink (struct stat_data_v1*) ;
 int sd_v1_rdev (struct stat_data_v1*) ;
 int sd_v1_size (struct stat_data_v1*) ;
 int sd_v1_uid (struct stat_data_v1*) ;
 int sd_v2_atime (struct stat_data*) ;
 int sd_v2_attrs (struct stat_data*) ;
 int sd_v2_blocks (struct stat_data*) ;
 int sd_v2_ctime (struct stat_data*) ;
 void* sd_v2_generation (struct stat_data*) ;
 int sd_v2_gid (struct stat_data*) ;
 int sd_v2_mode (struct stat_data*) ;
 int sd_v2_mtime (struct stat_data*) ;
 int sd_v2_nlink (struct stat_data*) ;
 int sd_v2_rdev (struct stat_data*) ;
 int sd_v2_size (struct stat_data*) ;
 int sd_v2_uid (struct stat_data*) ;
 int set_inode_item_key_version (struct inode*,int ) ;
 int set_inode_sd_version (struct inode*,int ) ;
 scalar_t__ stat_data_v1 (struct item_head*) ;
 int to_real_used_space (struct inode*,int,int ) ;

__attribute__((used)) static void init_inode(struct inode *inode, struct treepath *path)
{
 struct buffer_head *bh;
 struct item_head *ih;
 __u32 rdev;


 bh = PATH_PLAST_BUFFER(path);
 ih = PATH_PITEM_HEAD(path);

 copy_key(INODE_PKEY(inode), &(ih->ih_key));

 INIT_LIST_HEAD(&(REISERFS_I(inode)->i_prealloc_list));
 REISERFS_I(inode)->i_flags = 0;
 REISERFS_I(inode)->i_prealloc_block = 0;
 REISERFS_I(inode)->i_prealloc_count = 0;
 REISERFS_I(inode)->i_trans_id = 0;
 REISERFS_I(inode)->i_jl = ((void*)0);
 mutex_init(&(REISERFS_I(inode)->i_mmap));
 reiserfs_init_xattr_rwsem(inode);

 if (stat_data_v1(ih)) {
  struct stat_data_v1 *sd =
      (struct stat_data_v1 *)B_I_PITEM(bh, ih);
  unsigned long blocks;

  set_inode_item_key_version(inode, KEY_FORMAT_3_5);
  set_inode_sd_version(inode, STAT_DATA_V1);
  inode->i_mode = sd_v1_mode(sd);
  inode->i_nlink = sd_v1_nlink(sd);
  inode->i_uid = sd_v1_uid(sd);
  inode->i_gid = sd_v1_gid(sd);
  inode->i_size = sd_v1_size(sd);
  inode->i_atime.tv_sec = sd_v1_atime(sd);
  inode->i_mtime.tv_sec = sd_v1_mtime(sd);
  inode->i_ctime.tv_sec = sd_v1_ctime(sd);
  inode->i_atime.tv_nsec = 0;
  inode->i_ctime.tv_nsec = 0;
  inode->i_mtime.tv_nsec = 0;

  inode->i_blocks = sd_v1_blocks(sd);
  inode->i_generation = le32_to_cpu(INODE_PKEY(inode)->k_dir_id);
  blocks = (inode->i_size + 511) >> 9;
  blocks = _ROUND_UP(blocks, inode->i_sb->s_blocksize >> 9);
  if (inode->i_blocks > blocks) {





   inode->i_blocks = blocks;
  }

  rdev = sd_v1_rdev(sd);
  REISERFS_I(inode)->i_first_direct_byte =
      sd_v1_first_direct_byte(sd);



  if (inode->i_blocks & 1) {
   inode->i_blocks++;
  }
  inode_set_bytes(inode,
    to_real_used_space(inode, inode->i_blocks,
         SD_V1_SIZE));


  REISERFS_I(inode)->i_flags &= ~i_nopack_mask;
 } else {


  struct stat_data *sd = (struct stat_data *)B_I_PITEM(bh, ih);

  inode->i_mode = sd_v2_mode(sd);
  inode->i_nlink = sd_v2_nlink(sd);
  inode->i_uid = sd_v2_uid(sd);
  inode->i_size = sd_v2_size(sd);
  inode->i_gid = sd_v2_gid(sd);
  inode->i_mtime.tv_sec = sd_v2_mtime(sd);
  inode->i_atime.tv_sec = sd_v2_atime(sd);
  inode->i_ctime.tv_sec = sd_v2_ctime(sd);
  inode->i_ctime.tv_nsec = 0;
  inode->i_mtime.tv_nsec = 0;
  inode->i_atime.tv_nsec = 0;
  inode->i_blocks = sd_v2_blocks(sd);
  rdev = sd_v2_rdev(sd);
  if (S_ISCHR(inode->i_mode) || S_ISBLK(inode->i_mode))
   inode->i_generation =
       le32_to_cpu(INODE_PKEY(inode)->k_dir_id);
  else
   inode->i_generation = sd_v2_generation(sd);

  if (S_ISDIR(inode->i_mode) || S_ISLNK(inode->i_mode))
   set_inode_item_key_version(inode, KEY_FORMAT_3_5);
  else
   set_inode_item_key_version(inode, KEY_FORMAT_3_6);
  REISERFS_I(inode)->i_first_direct_byte = 0;
  set_inode_sd_version(inode, STAT_DATA_V2);
  inode_set_bytes(inode,
    to_real_used_space(inode, inode->i_blocks,
         SD_V2_SIZE));


  REISERFS_I(inode)->i_attrs = sd_v2_attrs(sd);
  sd_attrs_to_i_attrs(sd_v2_attrs(sd), inode);
 }

 pathrelse(path);
 if (S_ISREG(inode->i_mode)) {
  inode->i_op = &reiserfs_file_inode_operations;
  inode->i_fop = &reiserfs_file_operations;
  inode->i_mapping->a_ops = &reiserfs_address_space_operations;
 } else if (S_ISDIR(inode->i_mode)) {
  inode->i_op = &reiserfs_dir_inode_operations;
  inode->i_fop = &reiserfs_dir_operations;
 } else if (S_ISLNK(inode->i_mode)) {
  inode->i_op = &reiserfs_symlink_inode_operations;
  inode->i_mapping->a_ops = &reiserfs_address_space_operations;
 } else {
  inode->i_blocks = 0;
  inode->i_op = &reiserfs_special_inode_operations;
  init_special_inode(inode, inode->i_mode, new_decode_dev(rdev));
 }
}
