
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tree_balance {struct buffer_head** used; struct buffer_head** FEB; int tb_sb; } ;
struct buffer_info {int dummy; } ;
struct buffer_head {int dummy; } ;


 int MAX_FEB_SIZE ;
 int buffer_info_init_bh (struct tree_balance*,struct buffer_info*,struct buffer_head*) ;
 int make_empty_node (struct buffer_info*) ;
 int reiserfs_panic (int ,char*,char*) ;
 int set_buffer_uptodate (struct buffer_head*) ;

struct buffer_head *get_FEB(struct tree_balance *tb)
{
 int i;
 struct buffer_info bi;

 for (i = 0; i < MAX_FEB_SIZE; i++)
  if (tb->FEB[i] != ((void*)0))
   break;

 if (i == MAX_FEB_SIZE)
  reiserfs_panic(tb->tb_sb, "vs-12300", "FEB list is empty");

 buffer_info_init_bh(tb, &bi, tb->FEB[i]);
 make_empty_node(&bi);
 set_buffer_uptodate(tb->FEB[i]);
 tb->used[i] = tb->FEB[i];
 tb->FEB[i] = ((void*)0);

 return tb->used[i];
}
