
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct buffer_head {int dummy; } ;
struct TYPE_6__ {int h_buffer_credits; } ;
typedef TYPE_1__ handle_t ;


 int EXT3_MAX_TRANS_DATA ;
 int ext3_journal_extend (TYPE_1__*,int ) ;
 int ext3_journal_get_write_access (TYPE_1__*,struct buffer_head*) ;
 int ext3_journal_restart (TYPE_1__*,int ) ;

__attribute__((used)) static int extend_or_restart_transaction(handle_t *handle, int thresh,
      struct buffer_head *bh)
{
 int err;

 if (handle->h_buffer_credits >= thresh)
  return 0;

 err = ext3_journal_extend(handle, EXT3_MAX_TRANS_DATA);
 if (err < 0)
  return err;
 if (err) {
  err = ext3_journal_restart(handle, EXT3_MAX_TRANS_DATA);
  if (err)
   return err;
  err = ext3_journal_get_write_access(handle, bh);
  if (err)
   return err;
 }

 return 0;
}
