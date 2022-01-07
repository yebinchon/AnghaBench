
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ubifs_znode {int child_cnt; int level; int lnum; int offs; int len; int flags; struct ubifs_znode* cnext; struct ubifs_zbranch* zbranch; } ;
struct ubifs_zbranch {struct ubifs_znode* znode; int len; int lnum; int offs; int key; } ;
struct ubifs_info {int ihead_lnum; int ihead_offs; int max_idx_node_sz; int min_io_size; int leb_size; int* ilebs; TYPE_1__* dbg; struct ubifs_idx_node* cbuf; struct ubifs_znode* cnext; struct ubifs_znode* enext; } ;
struct TYPE_4__ {int node_type; } ;
struct ubifs_idx_node {void* level; void* child_cnt; TYPE_2__ ch; } ;
struct ubifs_branch {void* len; void* offs; void* lnum; int key; } ;
struct TYPE_3__ {int new_ihead_lnum; int new_ihead_offs; } ;


 int ALIGN (int,int) ;
 int COW_ZNODE ;
 int DIRTY_ZNODE ;
 int EINVAL ;
 int LPROPS_NC ;
 int LPROPS_TAKEN ;
 int UBIFS_IDX_NODE ;
 int UBI_SHORTTERM ;
 int clear_bit (int ,int *) ;
 int cond_resched () ;
 void* cpu_to_le16 (int) ;
 void* cpu_to_le32 (int ) ;
 int dbg_dump_znode (struct ubifs_info*,struct ubifs_znode*) ;
 int key_write_idx (struct ubifs_info*,int *,int *) ;
 int memmove (struct ubifs_idx_node*,struct ubifs_idx_node*,int) ;
 int smp_mb__after_clear_bit () ;
 int smp_mb__before_clear_bit () ;
 int test_bit (int ,int *) ;
 int ubifs_assert (int ) ;
 int ubifs_err (char*) ;
 struct ubifs_branch* ubifs_idx_branch (struct ubifs_info*,struct ubifs_idx_node*,int) ;
 int ubifs_idx_node_sz (struct ubifs_info*,int) ;
 int ubifs_leb_write (struct ubifs_info*,int,struct ubifs_idx_node*,int,int,int ) ;
 int ubifs_pad (struct ubifs_info*,struct ubifs_idx_node*,int) ;
 int ubifs_prepare_node (struct ubifs_info*,struct ubifs_idx_node*,int,int ) ;
 int ubifs_update_one_lp (struct ubifs_info*,int,int ,int ,int ,int ) ;
 int ubifs_zn_dirty (struct ubifs_znode*) ;

__attribute__((used)) static int write_index(struct ubifs_info *c)
{
 struct ubifs_idx_node *idx;
 struct ubifs_znode *znode, *cnext;
 int i, lnum, offs, len, next_len, buf_len, buf_offs, used;
 int avail, wlen, err, lnum_pos = 0;

 cnext = c->enext;
 if (!cnext)
  return 0;





 lnum = c->ihead_lnum;
 buf_offs = c->ihead_offs;


 buf_len = ALIGN(c->max_idx_node_sz, c->min_io_size);
 used = 0;
 avail = buf_len;


 next_len = ubifs_idx_node_sz(c, cnext->child_cnt);
 if (buf_offs + next_len > c->leb_size) {
  err = ubifs_update_one_lp(c, lnum, LPROPS_NC, 0, 0,
       LPROPS_TAKEN);
  if (err)
   return err;
  lnum = -1;
 }

 while (1) {
  cond_resched();

  znode = cnext;
  idx = c->cbuf + used;


  idx->ch.node_type = UBIFS_IDX_NODE;
  idx->child_cnt = cpu_to_le16(znode->child_cnt);
  idx->level = cpu_to_le16(znode->level);
  for (i = 0; i < znode->child_cnt; i++) {
   struct ubifs_branch *br = ubifs_idx_branch(c, idx, i);
   struct ubifs_zbranch *zbr = &znode->zbranch[i];

   key_write_idx(c, &zbr->key, &br->key);
   br->lnum = cpu_to_le32(zbr->lnum);
   br->offs = cpu_to_le32(zbr->offs);
   br->len = cpu_to_le32(zbr->len);
   if (!zbr->lnum || !zbr->len) {
    ubifs_err("bad ref in znode");
    dbg_dump_znode(c, znode);
    if (zbr->znode)
     dbg_dump_znode(c, zbr->znode);
   }
  }
  len = ubifs_idx_node_sz(c, znode->child_cnt);
  ubifs_prepare_node(c, idx, len, 0);


  if (lnum == -1) {
   lnum = c->ilebs[lnum_pos++];
   buf_offs = 0;
   used = 0;
   avail = buf_len;
  }
  offs = buf_offs + used;
  cnext = znode->cnext;

  ubifs_assert(ubifs_zn_dirty(znode));
  ubifs_assert(test_bit(COW_ZNODE, &znode->flags));
  clear_bit(DIRTY_ZNODE, &znode->flags);
  smp_mb__before_clear_bit();
  clear_bit(COW_ZNODE, &znode->flags);
  smp_mb__after_clear_bit();




  wlen = used + len;
  used += ALIGN(len, 8);
  avail -= ALIGN(len, 8);





  if (cnext == c->cnext)
   next_len = 0;
  else
   next_len = ubifs_idx_node_sz(c, cnext->child_cnt);

  if (c->min_io_size == 1) {




   err = ubifs_leb_write(c, lnum, c->cbuf, buf_offs,
           wlen, UBI_SHORTTERM);
   if (err)
    return err;
   buf_offs += ALIGN(wlen, 8);
   if (next_len) {
    used = 0;
    avail = buf_len;
    if (buf_offs + next_len > c->leb_size) {
     err = ubifs_update_one_lp(c, lnum,
      LPROPS_NC, 0, 0, LPROPS_TAKEN);
     if (err)
      return err;
     lnum = -1;
    }
    continue;
   }
  } else {
   int blen, nxt_offs = buf_offs + used + next_len;

   if (next_len && nxt_offs <= c->leb_size) {
    if (avail > 0)
     continue;
    else
     blen = buf_len;
   } else {
    wlen = ALIGN(wlen, 8);
    blen = ALIGN(wlen, c->min_io_size);
    ubifs_pad(c, c->cbuf + wlen, blen - wlen);
   }




   err = ubifs_leb_write(c, lnum, c->cbuf, buf_offs,
           blen, UBI_SHORTTERM);
   if (err)
    return err;
   buf_offs += blen;
   if (next_len) {
    if (nxt_offs > c->leb_size) {
     err = ubifs_update_one_lp(c, lnum,
      LPROPS_NC, 0, 0, LPROPS_TAKEN);
     if (err)
      return err;
     lnum = -1;
    }
    used -= blen;
    if (used < 0)
     used = 0;
    avail = buf_len - used;
    memmove(c->cbuf, c->cbuf + blen, used);
    continue;
   }
  }
  break;
 }
 c->ihead_lnum = lnum;
 c->ihead_offs = buf_offs;

 return 0;
}
