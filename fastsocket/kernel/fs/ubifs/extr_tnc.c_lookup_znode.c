
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef union ubifs_key {int dummy; } ubifs_key ;
struct ubifs_znode {int level; int child_cnt; TYPE_1__* zbranch; } ;
struct TYPE_4__ {int lnum; int offs; struct ubifs_znode* znode; } ;
struct ubifs_info {TYPE_2__ zroot; } ;
struct TYPE_3__ {int lnum; int offs; int key; } ;


 int EINVAL ;
 struct ubifs_znode* ERR_PTR (int ) ;
 scalar_t__ IS_ERR (struct ubifs_znode*) ;
 struct ubifs_znode* get_znode (struct ubifs_info*,struct ubifs_znode*,int) ;
 int is_hash_key (struct ubifs_info*,union ubifs_key*) ;
 scalar_t__ keys_cmp (struct ubifs_info*,int *,union ubifs_key*) ;
 struct ubifs_znode* left_znode (struct ubifs_info*,struct ubifs_znode*) ;
 struct ubifs_znode* right_znode (struct ubifs_info*,struct ubifs_znode*) ;
 int ubifs_assert (int) ;
 struct ubifs_znode* ubifs_load_znode (struct ubifs_info*,TYPE_2__*,int *,int ) ;
 int ubifs_search_zbranch (struct ubifs_info*,struct ubifs_znode*,union ubifs_key*,int*) ;

__attribute__((used)) static struct ubifs_znode *lookup_znode(struct ubifs_info *c,
     union ubifs_key *key, int level,
     int lnum, int offs)
{
 struct ubifs_znode *znode, *zn;
 int n, nn;





 if (level < 0)
  return ERR_PTR(-EINVAL);


 znode = c->zroot.znode;
 if (!znode) {
  znode = ubifs_load_znode(c, &c->zroot, ((void*)0), 0);
  if (IS_ERR(znode))
   return znode;
 }

 if (c->zroot.lnum == lnum && c->zroot.offs == offs)
  return znode;

 if (level >= znode->level)
  return ((void*)0);
 while (1) {
  ubifs_search_zbranch(c, znode, key, &n);
  if (n < 0) {
   znode = left_znode(c, znode);
   if (!znode)
    return ((void*)0);
   if (IS_ERR(znode))
    return znode;
   ubifs_search_zbranch(c, znode, key, &n);
   ubifs_assert(n >= 0);
  }
  if (znode->level == level + 1)
   break;
  znode = get_znode(c, znode, n);
  if (IS_ERR(znode))
   return znode;
 }

 if (znode->zbranch[n].lnum == lnum && znode->zbranch[n].offs == offs)
  return get_znode(c, znode, n);

 if (!is_hash_key(c, key))
  return ((void*)0);




 zn = znode;
 nn = n;

 while (1) {

  if (n)
   n -= 1;
  else {
   znode = left_znode(c, znode);
   if (!znode)
    break;
   if (IS_ERR(znode))
    return znode;
   n = znode->child_cnt - 1;
  }

  if (znode->zbranch[n].lnum == lnum &&
      znode->zbranch[n].offs == offs)
   return get_znode(c, znode, n);

  if (keys_cmp(c, &znode->zbranch[n].key, key) < 0)
   break;
 }

 znode = zn;
 n = nn;

 while (1) {

  if (++n >= znode->child_cnt) {
   znode = right_znode(c, znode);
   if (!znode)
    break;
   if (IS_ERR(znode))
    return znode;
   n = 0;
  }

  if (znode->zbranch[n].lnum == lnum &&
      znode->zbranch[n].offs == offs)
   return get_znode(c, znode, n);

  if (keys_cmp(c, &znode->zbranch[n].key, key) > 0)
   break;
 }
 return ((void*)0);
}
