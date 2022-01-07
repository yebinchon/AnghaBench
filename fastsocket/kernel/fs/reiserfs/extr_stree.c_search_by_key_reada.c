
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct buffer_head {int dummy; } ;
typedef int b_blocknr_t ;


 int READA ;
 int brelse (struct buffer_head*) ;
 int buffer_uptodate (struct buffer_head*) ;
 int ll_rw_block (int ,int,struct buffer_head**) ;
 struct buffer_head* sb_getblk (struct super_block*,int ) ;

__attribute__((used)) static void search_by_key_reada(struct super_block *s,
    struct buffer_head **bh,
    b_blocknr_t *b, int num)
{
 int i, j;

 for (i = 0; i < num; i++) {
  bh[i] = sb_getblk(s, b[i]);
 }
 for (j = 0; j < i; j++) {




  if (!buffer_uptodate(bh[j]))
   ll_rw_block(READA, 1, bh + j);
  brelse(bh[j]);
 }
}
