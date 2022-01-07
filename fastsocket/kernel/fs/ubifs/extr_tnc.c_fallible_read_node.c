
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union ubifs_key {int dummy; } ubifs_key ;
struct ubifs_zbranch {int len; int offs; int lnum; } ;
struct ubifs_info {scalar_t__ replaying; } ;
struct ubifs_dent_node {int key; } ;


 int DBGKEY (union ubifs_key const*) ;
 int dbg_mnt (char*,int ,int ,int ,int ) ;
 int dbg_tnc (char*,int ,int ,int ) ;
 int key_read (struct ubifs_info*,int *,union ubifs_key*) ;
 int key_type (struct ubifs_info*,union ubifs_key const*) ;
 scalar_t__ keys_cmp (struct ubifs_info*,union ubifs_key const*,union ubifs_key*) ;
 int try_read_node (struct ubifs_info*,void*,int ,int ,int ,int ) ;

__attribute__((used)) static int fallible_read_node(struct ubifs_info *c, const union ubifs_key *key,
         struct ubifs_zbranch *zbr, void *node)
{
 int ret;

 dbg_tnc("LEB %d:%d, key %s", zbr->lnum, zbr->offs, DBGKEY(key));

 ret = try_read_node(c, node, key_type(c, key), zbr->len, zbr->lnum,
       zbr->offs);
 if (ret == 1) {
  union ubifs_key node_key;
  struct ubifs_dent_node *dent = node;


  key_read(c, &dent->key, &node_key);
  if (keys_cmp(c, key, &node_key) != 0)
   ret = 0;
 }
 if (ret == 0 && c->replaying)
  dbg_mnt("dangling branch LEB %d:%d len %d, key %s",
   zbr->lnum, zbr->offs, zbr->len, DBGKEY(key));
 return ret;
}
