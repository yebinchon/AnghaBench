
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ubifs_znode {struct ubifs_znode* cnext; scalar_t__ alt; int flags; } ;
struct TYPE_2__ {int znode; } ;
struct ubifs_info {int dirty_zn_cnt; struct ubifs_znode* cnext; struct ubifs_znode* enext; TYPE_1__ zroot; } ;


 int COW_ZNODE ;
 int __set_bit (int ,int *) ;
 int atomic_long_read (int *) ;
 int dbg_cmt (char*,...) ;
 struct ubifs_znode* find_first_dirty (int ) ;
 struct ubifs_znode* find_next_dirty (struct ubifs_znode*) ;
 int test_bit (int ,int *) ;
 int ubifs_assert (int) ;

__attribute__((used)) static int get_znodes_to_commit(struct ubifs_info *c)
{
 struct ubifs_znode *znode, *cnext;
 int cnt = 0;

 c->cnext = find_first_dirty(c->zroot.znode);
 znode = c->enext = c->cnext;
 if (!znode) {
  dbg_cmt("no znodes to commit");
  return 0;
 }
 cnt += 1;
 while (1) {
  ubifs_assert(!test_bit(COW_ZNODE, &znode->flags));
  __set_bit(COW_ZNODE, &znode->flags);
  znode->alt = 0;
  cnext = find_next_dirty(znode);
  if (!cnext) {
   znode->cnext = c->cnext;
   break;
  }
  znode->cnext = cnext;
  znode = cnext;
  cnt += 1;
 }
 dbg_cmt("committing %d znodes", cnt);
 ubifs_assert(cnt == atomic_long_read(&c->dirty_zn_cnt));
 return cnt;
}
