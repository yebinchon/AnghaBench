
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer_head {int dummy; } ;


 int check_internal_block_head (struct buffer_head*) ;

void check_internal(struct buffer_head *bh)
{
 if (!bh)
  return;
 check_internal_block_head(bh);
}
