
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer_head {int dummy; } ;


 int B_FREE_SPACE (struct buffer_head*) ;
 int B_LEVEL (struct buffer_head*) ;
 int B_NR_ITEMS (struct buffer_head*) ;
 int sprintf (char*,char*,int,int,int) ;

__attribute__((used)) static void sprintf_block_head(char *buf, struct buffer_head *bh)
{
 sprintf(buf, "level=%d, nr_items=%d, free_space=%d rdkey ",
  B_LEVEL(bh), B_NR_ITEMS(bh), B_FREE_SPACE(bh));
}
