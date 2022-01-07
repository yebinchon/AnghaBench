
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer_head {int dummy; } ;
typedef int handle_t ;


 int EXT4_MAX_TRANS_DATA ;
 scalar_t__ ext4_handle_has_enough_credits (int *,int) ;
 int ext4_journal_extend (int *,int ) ;
 int ext4_journal_get_write_access (int *,struct buffer_head*) ;
 int ext4_journal_restart (int *,int ) ;

__attribute__((used)) static int extend_or_restart_transaction(handle_t *handle, int thresh,
      struct buffer_head *bh)
{
 int err;

 if (ext4_handle_has_enough_credits(handle, thresh))
  return 0;

 err = ext4_journal_extend(handle, EXT4_MAX_TRANS_DATA);
 if (err < 0)
  return err;
 if (err) {
  if ((err = ext4_journal_restart(handle, EXT4_MAX_TRANS_DATA)))
   return err;
  if ((err = ext4_journal_get_write_access(handle, bh)))
   return err;
 }

 return 0;
}
