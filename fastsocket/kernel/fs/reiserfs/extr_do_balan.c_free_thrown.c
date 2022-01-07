
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct tree_balance {int transaction_handle; TYPE_1__** thrown; int tb_sb; } ;
typedef int b_blocknr_t ;
struct TYPE_4__ {int b_blocknr; } ;


 int ARRAY_SIZE (TYPE_1__**) ;
 int brelse (TYPE_1__*) ;
 scalar_t__ buffer_dirty (TYPE_1__*) ;
 int reiserfs_free_block (int ,int *,int ,int ) ;
 int reiserfs_warning (int ,char*,char*,int ) ;

__attribute__((used)) static void free_thrown(struct tree_balance *tb)
{
 int i;
 b_blocknr_t blocknr;
 for (i = 0; i < ARRAY_SIZE(tb->thrown); i++) {
  if (tb->thrown[i]) {
   blocknr = tb->thrown[i]->b_blocknr;
   if (buffer_dirty(tb->thrown[i]))
    reiserfs_warning(tb->tb_sb, "reiserfs-12322",
       "called with dirty buffer %d",
       blocknr);
   brelse(tb->thrown[i]);
   reiserfs_free_block(tb->transaction_handle, ((void*)0),
         blocknr, 0);
  }
 }
}
