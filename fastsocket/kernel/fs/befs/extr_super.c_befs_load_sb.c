
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct TYPE_5__ {scalar_t__ fs_byte_order; int indices; int root_dir; int log_end; int log_start; int log_blocks; int num_ags; int ag_shift; int blocks_per_ag; int inode_size; int used_blocks; int num_blocks; int block_shift; int block_size; int magic3; int magic2; int magic1; } ;
typedef TYPE_1__ befs_super_block ;
struct TYPE_6__ {int * nls; void* indices; void* root_dir; void* log_end; void* log_start; void* log_blocks; void* num_ags; void* ag_shift; void* blocks_per_ag; void* inode_size; void* used_blocks; void* num_blocks; void* block_shift; void* block_size; void* magic3; void* magic2; void* magic1; int byte_order; } ;
typedef TYPE_2__ befs_sb_info ;


 scalar_t__ BEFS_BYTEORDER_NATIVE_BE ;
 scalar_t__ BEFS_BYTEORDER_NATIVE_LE ;
 int BEFS_BYTESEX_BE ;
 int BEFS_BYTESEX_LE ;
 int BEFS_OK ;
 TYPE_2__* BEFS_SB (struct super_block*) ;
 void* fs32_to_cpu (struct super_block*,int ) ;
 void* fs64_to_cpu (struct super_block*,int ) ;
 void* fsrun_to_cpu (struct super_block*,int ) ;

int
befs_load_sb(struct super_block *sb, befs_super_block * disk_sb)
{
 befs_sb_info *befs_sb = BEFS_SB(sb);


 if (disk_sb->fs_byte_order == BEFS_BYTEORDER_NATIVE_LE)
     befs_sb->byte_order = BEFS_BYTESEX_LE;
 else if (disk_sb->fs_byte_order == BEFS_BYTEORDER_NATIVE_BE)
     befs_sb->byte_order = BEFS_BYTESEX_BE;

 befs_sb->magic1 = fs32_to_cpu(sb, disk_sb->magic1);
 befs_sb->magic2 = fs32_to_cpu(sb, disk_sb->magic2);
 befs_sb->magic3 = fs32_to_cpu(sb, disk_sb->magic3);
 befs_sb->block_size = fs32_to_cpu(sb, disk_sb->block_size);
 befs_sb->block_shift = fs32_to_cpu(sb, disk_sb->block_shift);
 befs_sb->num_blocks = fs64_to_cpu(sb, disk_sb->num_blocks);
 befs_sb->used_blocks = fs64_to_cpu(sb, disk_sb->used_blocks);
 befs_sb->inode_size = fs32_to_cpu(sb, disk_sb->inode_size);

 befs_sb->blocks_per_ag = fs32_to_cpu(sb, disk_sb->blocks_per_ag);
 befs_sb->ag_shift = fs32_to_cpu(sb, disk_sb->ag_shift);
 befs_sb->num_ags = fs32_to_cpu(sb, disk_sb->num_ags);

 befs_sb->log_blocks = fsrun_to_cpu(sb, disk_sb->log_blocks);
 befs_sb->log_start = fs64_to_cpu(sb, disk_sb->log_start);
 befs_sb->log_end = fs64_to_cpu(sb, disk_sb->log_end);

 befs_sb->root_dir = fsrun_to_cpu(sb, disk_sb->root_dir);
 befs_sb->indices = fsrun_to_cpu(sb, disk_sb->indices);
 befs_sb->nls = ((void*)0);

 return BEFS_OK;
}
