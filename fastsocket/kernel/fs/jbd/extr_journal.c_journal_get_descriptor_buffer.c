
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct journal_head {int dummy; } ;
struct buffer_head {int b_data; } ;
struct TYPE_4__ {int j_blocksize; int j_dev; } ;
typedef TYPE_1__ journal_t ;


 int BUFFER_TRACE (struct buffer_head*,char*) ;
 struct buffer_head* __getblk (int ,unsigned int,int ) ;
 struct journal_head* journal_add_journal_head (struct buffer_head*) ;
 int journal_next_log_block (TYPE_1__*,unsigned int*) ;
 int lock_buffer (struct buffer_head*) ;
 int memset (int ,int ,int ) ;
 int set_buffer_uptodate (struct buffer_head*) ;
 int unlock_buffer (struct buffer_head*) ;

struct journal_head *journal_get_descriptor_buffer(journal_t *journal)
{
 struct buffer_head *bh;
 unsigned int blocknr;
 int err;

 err = journal_next_log_block(journal, &blocknr);

 if (err)
  return ((void*)0);

 bh = __getblk(journal->j_dev, blocknr, journal->j_blocksize);
 if (!bh)
  return ((void*)0);
 lock_buffer(bh);
 memset(bh->b_data, 0, journal->j_blocksize);
 set_buffer_uptodate(bh);
 unlock_buffer(bh);
 BUFFER_TRACE(bh, "return this buffer");
 return journal_add_journal_head(bh);
}
