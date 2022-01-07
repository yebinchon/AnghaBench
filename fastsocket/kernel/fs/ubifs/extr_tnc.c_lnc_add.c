
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_zbranch {void* leaf; int len; int key; } ;
struct ubifs_info {int dummy; } ;
struct ubifs_dent_node {int dummy; } ;


 int GFP_NOFS ;
 int dbg_dump_node (struct ubifs_info*,struct ubifs_dent_node const*) ;
 int dbg_dump_stack () ;
 int is_hash_key (struct ubifs_info*,int *) ;
 void* kmalloc (int ,int ) ;
 int memcpy (void*,void const*,int ) ;
 int ubifs_assert (int) ;
 int ubifs_validate_entry (struct ubifs_info*,struct ubifs_dent_node const*) ;

__attribute__((used)) static int lnc_add(struct ubifs_info *c, struct ubifs_zbranch *zbr,
     const void *node)
{
 int err;
 void *lnc_node;
 const struct ubifs_dent_node *dent = node;

 ubifs_assert(!zbr->leaf);
 ubifs_assert(zbr->len != 0);
 ubifs_assert(is_hash_key(c, &zbr->key));

 err = ubifs_validate_entry(c, dent);
 if (err) {
  dbg_dump_stack();
  dbg_dump_node(c, dent);
  return err;
 }

 lnc_node = kmalloc(zbr->len, GFP_NOFS);
 if (!lnc_node)

  return 0;

 memcpy(lnc_node, node, zbr->len);
 zbr->leaf = lnc_node;
 return 0;
}
