
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubifs_zbranch {scalar_t__ len; void* leaf; } ;
struct ubifs_info {int dummy; } ;


 int dbg_dump_node (struct ubifs_info*,void*) ;
 int dbg_dump_stack () ;
 int ubifs_assert (int) ;
 int ubifs_validate_entry (struct ubifs_info*,void*) ;

__attribute__((used)) static int lnc_add_directly(struct ubifs_info *c, struct ubifs_zbranch *zbr,
       void *node)
{
 int err;

 ubifs_assert(!zbr->leaf);
 ubifs_assert(zbr->len != 0);

 err = ubifs_validate_entry(c, node);
 if (err) {
  dbg_dump_stack();
  dbg_dump_node(c, node);
  return err;
 }

 zbr->leaf = node;
 return 0;
}
