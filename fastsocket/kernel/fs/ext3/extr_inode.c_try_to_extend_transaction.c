
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct inode {int dummy; } ;
struct TYPE_4__ {scalar_t__ h_buffer_credits; } ;
typedef TYPE_1__ handle_t ;


 scalar_t__ EXT3_RESERVE_TRANS_BLOCKS ;
 int blocks_for_truncate (struct inode*) ;
 int ext3_journal_extend (TYPE_1__*,int ) ;

__attribute__((used)) static int try_to_extend_transaction(handle_t *handle, struct inode *inode)
{
 if (handle->h_buffer_credits > EXT3_RESERVE_TRANS_BLOCKS)
  return 0;
 if (!ext3_journal_extend(handle, blocks_for_truncate(inode)))
  return 0;
 return 1;
}
