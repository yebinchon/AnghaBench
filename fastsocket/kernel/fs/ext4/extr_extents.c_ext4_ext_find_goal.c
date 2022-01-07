
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct inode {int i_sb; int i_mode; } ;
struct ext4_inode_info {int i_block_group; } ;
struct ext4_extent {int ee_block; } ;
struct ext4_ext_path {int p_depth; TYPE_1__* p_bh; struct ext4_extent* p_ext; } ;
typedef scalar_t__ ext4_lblk_t ;
typedef int ext4_grpblk_t ;
typedef int ext4_group_t ;
typedef scalar_t__ ext4_fsblk_t ;
struct TYPE_9__ {int pid; } ;
struct TYPE_8__ {int s_first_data_block; } ;
struct TYPE_7__ {TYPE_3__* s_es; } ;
struct TYPE_6__ {scalar_t__ b_blocknr; } ;


 int DELALLOC ;
 int EXT4_BLOCKS_PER_GROUP (int ) ;
 int EXT4_FLEX_SIZE_DIR_ALLOC_SCHEME ;
 struct ext4_inode_info* EXT4_I (struct inode*) ;
 TYPE_2__* EXT4_SB (int ) ;
 scalar_t__ S_ISREG (int ) ;
 TYPE_4__* current ;
 scalar_t__ ext4_blocks_count (TYPE_3__*) ;
 scalar_t__ ext4_ext_pblock (struct ext4_extent*) ;
 int ext4_flex_bg_size (TYPE_2__*) ;
 scalar_t__ le32_to_cpu (int ) ;
 scalar_t__ test_opt (int ,int ) ;

__attribute__((used)) static ext4_fsblk_t ext4_ext_find_goal(struct inode *inode,
         struct ext4_ext_path *path,
         ext4_lblk_t block)
{
 struct ext4_inode_info *ei = EXT4_I(inode);
 ext4_fsblk_t bg_start;
 ext4_fsblk_t last_block;
 ext4_grpblk_t colour;
 ext4_group_t block_group;
 int flex_size = ext4_flex_bg_size(EXT4_SB(inode->i_sb));
 int depth;

 if (path) {
  struct ext4_extent *ex;
  depth = path->p_depth;


  ex = path[depth].p_ext;
  if (ex)
   return (ext4_ext_pblock(ex) +
    (block - le32_to_cpu(ex->ee_block)));



  if (path[depth].p_bh)
   return path[depth].p_bh->b_blocknr;
 }


 block_group = ei->i_block_group;
 if (flex_size >= EXT4_FLEX_SIZE_DIR_ALLOC_SCHEME) {
  block_group &= ~(flex_size-1);
  if (S_ISREG(inode->i_mode))
   block_group++;
 }
 bg_start = (block_group * EXT4_BLOCKS_PER_GROUP(inode->i_sb)) +
  le32_to_cpu(EXT4_SB(inode->i_sb)->s_es->s_first_data_block);
 last_block = ext4_blocks_count(EXT4_SB(inode->i_sb)->s_es) - 1;





 if (test_opt(inode->i_sb, DELALLOC))
  return bg_start;

 if (bg_start + EXT4_BLOCKS_PER_GROUP(inode->i_sb) <= last_block)
  colour = (current->pid % 16) *
   (EXT4_BLOCKS_PER_GROUP(inode->i_sb) / 16);
 else
  colour = (current->pid % 16) * ((last_block - bg_start) / 16);
 return bg_start + colour + block;
}
