
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int s_blocksize; } ;
struct ocfs2_disk_dqtrailer {int dq_check; } ;
struct buffer_head {int b_data; scalar_t__ b_blocknr; } ;


 int BUG_ON (int) ;
 int buffer_uptodate (struct buffer_head*) ;
 int mlog (int ,char*,unsigned long long) ;
 struct ocfs2_disk_dqtrailer* ocfs2_block_dqtrailer (int ,int ) ;
 int ocfs2_validate_meta_ecc (struct super_block*,int ,int *) ;

__attribute__((used)) static int ocfs2_validate_quota_block(struct super_block *sb,
          struct buffer_head *bh)
{
 struct ocfs2_disk_dqtrailer *dqt =
  ocfs2_block_dqtrailer(sb->s_blocksize, bh->b_data);

 mlog(0, "Validating quota block %llu\n",
      (unsigned long long)bh->b_blocknr);

 BUG_ON(!buffer_uptodate(bh));






 return ocfs2_validate_meta_ecc(sb, bh->b_data, &dqt->dq_check);
}
