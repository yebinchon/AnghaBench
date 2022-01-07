
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {int dummy; } ;
struct address_space {struct inode* host; } ;
typedef int sector_t ;
typedef int journal_t ;
struct TYPE_2__ {int i_state; } ;


 TYPE_1__* EXT3_I (struct inode*) ;
 int * EXT3_JOURNAL (struct inode*) ;
 int EXT3_STATE_JDATA ;
 int ext3_get_block ;
 int generic_block_bmap (struct address_space*,int ,int ) ;
 int journal_flush (int *) ;
 int journal_lock_updates (int *) ;
 int journal_unlock_updates (int *) ;

__attribute__((used)) static sector_t ext3_bmap(struct address_space *mapping, sector_t block)
{
 struct inode *inode = mapping->host;
 journal_t *journal;
 int err;

 if (EXT3_I(inode)->i_state & EXT3_STATE_JDATA) {
  EXT3_I(inode)->i_state &= ~EXT3_STATE_JDATA;
  journal = EXT3_JOURNAL(inode);
  journal_lock_updates(journal);
  err = journal_flush(journal);
  journal_unlock_updates(journal);

  if (err)
   return 0;
 }

 return generic_block_bmap(mapping,block,ext3_get_block);
}
