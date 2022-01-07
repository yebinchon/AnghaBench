
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer_head {int b_state; } ;


 int BH_Quiet ;
 scalar_t__ printk_ratelimit () ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int quiet_error(struct buffer_head *bh)
{
 if (!test_bit(BH_Quiet, &bh->b_state) && printk_ratelimit())
  return 0;
 return 1;
}
