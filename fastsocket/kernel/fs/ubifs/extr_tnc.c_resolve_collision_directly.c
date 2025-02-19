
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef union ubifs_key {int dummy; } ubifs_key ;
struct ubifs_znode {TYPE_1__* zbranch; } ;
struct ubifs_info {int dummy; } ;
struct TYPE_2__ {int key; } ;


 int ENOENT ;
 scalar_t__ keys_cmp (struct ubifs_info*,int *,union ubifs_key const*) ;
 scalar_t__ matches_position (TYPE_1__*,int,int) ;
 int tnc_next (struct ubifs_info*,struct ubifs_znode**,int*) ;
 int tnc_prev (struct ubifs_info*,struct ubifs_znode**,int*) ;

__attribute__((used)) static int resolve_collision_directly(struct ubifs_info *c,
          const union ubifs_key *key,
          struct ubifs_znode **zn, int *n,
          int lnum, int offs)
{
 struct ubifs_znode *znode;
 int nn, err;

 znode = *zn;
 nn = *n;
 if (matches_position(&znode->zbranch[nn], lnum, offs))
  return 1;


 while (1) {
  err = tnc_prev(c, &znode, &nn);
  if (err == -ENOENT)
   break;
  if (err < 0)
   return err;
  if (keys_cmp(c, &znode->zbranch[nn].key, key))
   break;
  if (matches_position(&znode->zbranch[nn], lnum, offs)) {
   *zn = znode;
   *n = nn;
   return 1;
  }
 }


 znode = *zn;
 nn = *n;
 while (1) {
  err = tnc_next(c, &znode, &nn);
  if (err == -ENOENT)
   return 0;
  if (err < 0)
   return err;
  if (keys_cmp(c, &znode->zbranch[nn].key, key))
   return 0;
  *zn = znode;
  *n = nn;
  if (matches_position(&znode->zbranch[nn], lnum, offs))
   return 1;
 }
}
