
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct jffs2_sb_info {int sector_size; int dirty_size; int wasted_size; int nr_erasing_blocks; int erase_pending_list; int bad_used_list; struct jffs2_eraseblock* nextblock; } ;
struct jffs2_eraseblock {int offset; int free_size; int dirty_size; int wasted_size; int list; scalar_t__ first_node; } ;


 int BUG_ON (int) ;
 int D1 (int ) ;
 int REFILE_NOTEMPTY ;
 int REF_OBSOLETE ;
 int jffs2_dbg_acct_paranoia_check_nolock (struct jffs2_sb_info*,struct jffs2_eraseblock*) ;
 int jffs2_dbg_acct_sanity_check_nolock (struct jffs2_sb_info*,struct jffs2_eraseblock*) ;
 int jffs2_dbg_dump_block_lists_nolock (struct jffs2_sb_info*) ;
 int jffs2_erase_pending_trigger (struct jffs2_sb_info*) ;
 int jffs2_link_node_ref (struct jffs2_sb_info*,struct jffs2_eraseblock*,int,int,int *) ;
 int jffs2_prealloc_raw_node_refs (struct jffs2_sb_info*,struct jffs2_eraseblock*,int) ;
 int list_add (int *,int *) ;
 int list_del (int *) ;
 int printk (char*,int) ;

__attribute__((used)) static void jffs2_block_refile(struct jffs2_sb_info *c, struct jffs2_eraseblock *jeb, int allow_empty)
{
 D1(printk("About to refile bad block at %08x\n", jeb->offset));


 if (c->nextblock == jeb)
  c->nextblock = ((void*)0);
 else
  list_del(&jeb->list);
 if (jeb->first_node) {
  D1(printk("Refiling block at %08x to bad_used_list\n", jeb->offset));
  list_add(&jeb->list, &c->bad_used_list);
 } else {
  BUG_ON(allow_empty == REFILE_NOTEMPTY);

  D1(printk("Refiling block at %08x to erase_pending_list\n", jeb->offset));
  list_add(&jeb->list, &c->erase_pending_list);
  c->nr_erasing_blocks++;
  jffs2_erase_pending_trigger(c);
 }

 if (!jffs2_prealloc_raw_node_refs(c, jeb, 1)) {
  uint32_t oldfree = jeb->free_size;

  jffs2_link_node_ref(c, jeb,
        (jeb->offset+c->sector_size-oldfree) | REF_OBSOLETE,
        oldfree, ((void*)0));

  c->wasted_size += oldfree;
  jeb->wasted_size += oldfree;
  c->dirty_size -= oldfree;
  jeb->dirty_size -= oldfree;
 }

 jffs2_dbg_dump_block_lists_nolock(c);
 jffs2_dbg_acct_sanity_check_nolock(c,jeb);
 jffs2_dbg_acct_paranoia_check_nolock(c, jeb);
}
