
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tree_balance {int tb_path; struct buffer_head** FL; } ;
struct buffer_head {int dummy; } ;


 int B_NR_ITEMS (struct buffer_head*) ;
 int B_N_CHILD (struct buffer_head*,int) ;
 int MAX_CHILD_SIZE (struct buffer_head*) ;
 int PATH_H_B_ITEM_ORDER (int ,int) ;
 struct buffer_head* PATH_H_PPARENT (int ,int) ;
 int dc_size (int ) ;

__attribute__((used)) static int get_lfree(struct tree_balance *tb, int h)
{
 struct buffer_head *l, *f;
 int order;

 if ((f = PATH_H_PPARENT(tb->tb_path, h)) == ((void*)0) ||
     (l = tb->FL[h]) == ((void*)0))
  return 0;

 if (f == l)
  order = PATH_H_B_ITEM_ORDER(tb->tb_path, h) - 1;
 else {
  order = B_NR_ITEMS(l);
  f = l;
 }

 return (MAX_CHILD_SIZE(f) - dc_size(B_N_CHILD(f, order)));
}
