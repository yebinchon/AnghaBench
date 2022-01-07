
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysv_sb_info {int s_type; int s_bytesex; } ;
struct coh_super_block {int s_fpack; int s_fname; } ;
struct buffer_head {scalar_t__ b_data; } ;


 int BLOCK_SIZE ;
 int BYTESEX_PDP ;
 int FSTYPE_COH ;
 scalar_t__ memcmp (int ,char*,int) ;

__attribute__((used)) static int detect_coherent(struct sysv_sb_info *sbi, struct buffer_head *bh)
{
 struct coh_super_block * sbd;

 sbd = (struct coh_super_block *) (bh->b_data + BLOCK_SIZE/2);
 if ((memcmp(sbd->s_fname,"noname",6) && memcmp(sbd->s_fname,"xxxxx ",6))
     || (memcmp(sbd->s_fpack,"nopack",6) && memcmp(sbd->s_fpack,"xxxxx\n",6)))
  return 0;
 sbi->s_bytesex = BYTESEX_PDP;
 sbi->s_type = FSTYPE_COH;
 return 1;
}
