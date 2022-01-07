
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct reiserfs_journal_desc {int dummy; } ;
struct buffer_head {scalar_t__ b_blocknr; scalar_t__ b_data; } ;


 int JOURNAL_DESC_MAGIC ;
 int get_desc_mount_id (struct reiserfs_journal_desc*) ;
 int get_desc_trans_id (struct reiserfs_journal_desc*) ;
 int get_desc_trans_len (struct reiserfs_journal_desc*) ;
 int get_journal_desc_magic (struct buffer_head*) ;
 scalar_t__ memcmp (int ,int ,int) ;
 int printk (char*,unsigned long long,int ,int ,int ) ;

__attribute__((used)) static int print_desc_block(struct buffer_head *bh)
{
 struct reiserfs_journal_desc *desc;

 if (memcmp(get_journal_desc_magic(bh), JOURNAL_DESC_MAGIC, 8))
  return 1;

 desc = (struct reiserfs_journal_desc *)(bh->b_data);
 printk("Desc block %llu (j_trans_id %d, j_mount_id %d, j_len %d)",
        (unsigned long long)bh->b_blocknr, get_desc_trans_id(desc),
        get_desc_mount_id(desc), get_desc_trans_len(desc));

 return 0;
}
