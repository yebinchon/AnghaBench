
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer_head {int dummy; } ;
typedef int handle_t ;


 scalar_t__ ext4_handle_valid (int *) ;
 int jbd2_journal_release_buffer (int *,struct buffer_head*) ;

__attribute__((used)) static inline void ext4_journal_release_buffer(handle_t *handle,
      struct buffer_head *bh)
{
 if (ext4_handle_valid(handle))
  jbd2_journal_release_buffer(handle, bh);
}
