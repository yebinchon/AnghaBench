
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_znode {int flags; struct ubifs_znode* cnext; } ;
struct ubifs_info {scalar_t__ cmt_state; struct ubifs_znode* cnext; } ;


 scalar_t__ COMMIT_BROKEN ;
 int OBSOLETE_ZNODE ;
 int kfree (struct ubifs_znode*) ;
 scalar_t__ test_bit (int ,int *) ;
 int ubifs_assert (int) ;

__attribute__((used)) static void tnc_destroy_cnext(struct ubifs_info *c)
{
 struct ubifs_znode *cnext;

 if (!c->cnext)
  return;
 ubifs_assert(c->cmt_state == COMMIT_BROKEN);
 cnext = c->cnext;
 do {
  struct ubifs_znode *znode = cnext;

  cnext = cnext->cnext;
  if (test_bit(OBSOLETE_ZNODE, &znode->flags))
   kfree(znode);
 } while (cnext && cnext != c->cnext);
}
