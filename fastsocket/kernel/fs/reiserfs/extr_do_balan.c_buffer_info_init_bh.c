
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tree_balance {int dummy; } ;
struct buffer_info {scalar_t__ bi_position; int * bi_parent; struct buffer_head* bi_bh; struct tree_balance* tb; } ;
struct buffer_head {int dummy; } ;



__attribute__((used)) static inline void buffer_info_init_bh(struct tree_balance *tb,
                                       struct buffer_info *bi,
                                       struct buffer_head *bh)
{
 bi->tb = tb;
 bi->bi_bh = bh;
 bi->bi_parent = ((void*)0);
 bi->bi_position = 0;
}
