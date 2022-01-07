
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int s_flags; void* s_magic; } ;
struct nilfs_super_block {int s_c_block_max; int s_c_interval; int s_def_resgid; int s_def_resuid; int s_magic; } ;
struct nilfs_sb_info {void* s_watermark; void* s_interval; void* s_resgid; void* s_resuid; } ;


 int EINVAL ;
 int MS_NOATIME ;
 struct nilfs_sb_info* NILFS_SB (struct super_block*) ;
 void* le16_to_cpu (int ) ;
 void* le32_to_cpu (int ) ;
 int nilfs_set_default_options (struct nilfs_sb_info*,struct nilfs_super_block*) ;
 int parse_options (char*,struct super_block*) ;

int nilfs_store_magic_and_option(struct super_block *sb,
     struct nilfs_super_block *sbp,
     char *data)
{
 struct nilfs_sb_info *sbi = NILFS_SB(sb);

 sb->s_magic = le16_to_cpu(sbp->s_magic);






 nilfs_set_default_options(sbi, sbp);

 sbi->s_resuid = le16_to_cpu(sbp->s_def_resuid);
 sbi->s_resgid = le16_to_cpu(sbp->s_def_resgid);
 sbi->s_interval = le32_to_cpu(sbp->s_c_interval);
 sbi->s_watermark = le32_to_cpu(sbp->s_c_block_max);

 return !parse_options(data, sb) ? -EINVAL : 0 ;
}
