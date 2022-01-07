
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint ;
struct super_block {TYPE_1__* s_op; } ;
struct qtree_mem_dqinfo {int dqi_blocksize_bits; int dqi_usable_bs; int dqi_type; struct super_block* dqi_sb; } ;
typedef int ssize_t ;
struct TYPE_2__ {int (* quota_write ) (struct super_block*,int ,char*,int ,int) ;} ;


 int stub1 (struct super_block*,int ,char*,int ,int) ;

__attribute__((used)) static ssize_t write_blk(struct qtree_mem_dqinfo *info, uint blk, char *buf)
{
 struct super_block *sb = info->dqi_sb;

 return sb->s_op->quota_write(sb, info->dqi_type, buf,
        info->dqi_usable_bs, blk << info->dqi_blocksize_bits);
}
