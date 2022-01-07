
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union ubifs_key {int dummy; } ubifs_key ;
struct ubifs_znode {struct ubifs_zbranch* zbranch; } ;
struct ubifs_zbranch {int lnum; int offs; int key; } ;
struct ubifs_info {int dummy; } ;


 int ENOENT ;
 int is_hash_key (struct ubifs_info*,union ubifs_key*) ;
 scalar_t__ keys_cmp (struct ubifs_info*,union ubifs_key*,int *) ;
 int tnc_next (struct ubifs_info*,struct ubifs_znode**,int*) ;
 int tnc_prev (struct ubifs_info*,struct ubifs_znode**,int*) ;
 int ubifs_lookup_level0 (struct ubifs_info*,union ubifs_key*,struct ubifs_znode**,int*) ;

__attribute__((used)) static int is_leaf_node_in_tnc(struct ubifs_info *c, union ubifs_key *key,
          int lnum, int offs)
{
 struct ubifs_zbranch *zbr;
 struct ubifs_znode *znode, *zn;
 int n, found, err, nn;
 const int unique = !is_hash_key(c, key);

 found = ubifs_lookup_level0(c, key, &znode, &n);
 if (found < 0)
  return found;
 if (!found)
  return 0;
 zbr = &znode->zbranch[n];
 if (lnum == zbr->lnum && offs == zbr->offs)
  return 1;
 if (unique)
  return 0;




 zn = znode;
 nn = n;

 while (1) {
  err = tnc_prev(c, &znode, &n);
  if (err == -ENOENT)
   break;
  if (err)
   return err;
  if (keys_cmp(c, key, &znode->zbranch[n].key))
   break;
  zbr = &znode->zbranch[n];
  if (lnum == zbr->lnum && offs == zbr->offs)
   return 1;
 }

 znode = zn;
 n = nn;
 while (1) {
  err = tnc_next(c, &znode, &n);
  if (err) {
   if (err == -ENOENT)
    return 0;
   return err;
  }
  if (keys_cmp(c, key, &znode->zbranch[n].key))
   break;
  zbr = &znode->zbranch[n];
  if (lnum == zbr->lnum && offs == zbr->offs)
   return 1;
 }
 return 0;
}
