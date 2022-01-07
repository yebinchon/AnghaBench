
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_znode {struct ubifs_znode* cnext; int flags; } ;
struct ubifs_info {int clean_zn_cnt; struct ubifs_znode* cnext; } ;


 int OBSOLETE_ZNODE ;
 int atomic_long_inc (int *) ;
 int kfree (struct ubifs_znode*) ;
 scalar_t__ test_bit (int ,int *) ;
 int ubifs_clean_zn_cnt ;

__attribute__((used)) static void free_obsolete_znodes(struct ubifs_info *c)
{
 struct ubifs_znode *znode, *cnext;

 cnext = c->cnext;
 do {
  znode = cnext;
  cnext = znode->cnext;
  if (test_bit(OBSOLETE_ZNODE, &znode->flags))
   kfree(znode);
  else {
   znode->cnext = ((void*)0);
   atomic_long_inc(&c->clean_zn_cnt);
   atomic_long_inc(&ubifs_clean_zn_cnt);
  }
 } while (cnext != c->cnext);
}
