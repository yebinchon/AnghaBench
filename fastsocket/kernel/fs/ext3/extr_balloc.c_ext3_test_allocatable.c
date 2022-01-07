
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct journal_head {int b_committed_data; } ;
struct buffer_head {int b_data; } ;
typedef int ext3_grpblk_t ;


 struct journal_head* bh2jh (struct buffer_head*) ;
 scalar_t__ ext3_test_bit (int ,int ) ;
 int jbd_lock_bh_state (struct buffer_head*) ;
 int jbd_unlock_bh_state (struct buffer_head*) ;

__attribute__((used)) static int ext3_test_allocatable(ext3_grpblk_t nr, struct buffer_head *bh)
{
 int ret;
 struct journal_head *jh = bh2jh(bh);

 if (ext3_test_bit(nr, bh->b_data))
  return 0;

 jbd_lock_bh_state(bh);
 if (!jh->b_committed_data)
  ret = 1;
 else
  ret = !ext3_test_bit(nr, jh->b_committed_data);
 jbd_unlock_bh_state(bh);
 return ret;
}
