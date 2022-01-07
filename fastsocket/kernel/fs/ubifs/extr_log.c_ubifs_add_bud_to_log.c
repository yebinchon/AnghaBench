
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int node_type; } ;
struct ubifs_ref_node {int lnum; int start; int jhead; void* offs; TYPE_1__ ch; } ;
struct ubifs_info {scalar_t__ ref_node_alsz; scalar_t__ min_log_bytes; int bud_bytes; int leb_size; int max_bud_bytes; scalar_t__ bg_bud_bytes; scalar_t__ cmt_state; scalar_t__ lhead_offs; scalar_t__ lhead_lnum; int log_mutex; int ubi; scalar_t__ ro_media; } ;
struct ubifs_bud {int lnum; int start; int jhead; void* offs; TYPE_1__ ch; } ;


 scalar_t__ COMMIT_RESTING ;
 int EAGAIN ;
 int ENOMEM ;
 int EROFS ;
 int GFP_NOFS ;
 int UBIFS_REF_NODE ;
 int UBIFS_REF_NODE_SZ ;
 int UBI_SHORTTERM ;
 void* cpu_to_le32 (int) ;
 int dbg_log (char*,scalar_t__,scalar_t__) ;
 scalar_t__ empty_log_bytes (struct ubifs_info*) ;
 int kfree (struct ubifs_ref_node*) ;
 struct ubifs_ref_node* kmalloc (int,int ) ;
 struct ubifs_ref_node* kzalloc (scalar_t__,int ) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ next_log_lnum (struct ubifs_info*,scalar_t__) ;
 int ubi_leb_map (int ,int,int ) ;
 int ubifs_add_bud (struct ubifs_info*,struct ubifs_ref_node*) ;
 int ubifs_commit_required (struct ubifs_info*) ;
 int ubifs_leb_unmap (struct ubifs_info*,scalar_t__) ;
 int ubifs_request_bg_commit (struct ubifs_info*) ;
 int ubifs_ro_mode (struct ubifs_info*,int) ;
 int ubifs_write_node (struct ubifs_info*,struct ubifs_ref_node*,int ,scalar_t__,scalar_t__,int ) ;

int ubifs_add_bud_to_log(struct ubifs_info *c, int jhead, int lnum, int offs)
{
 int err;
 struct ubifs_bud *bud;
 struct ubifs_ref_node *ref;

 bud = kmalloc(sizeof(struct ubifs_bud), GFP_NOFS);
 if (!bud)
  return -ENOMEM;
 ref = kzalloc(c->ref_node_alsz, GFP_NOFS);
 if (!ref) {
  kfree(bud);
  return -ENOMEM;
 }

 mutex_lock(&c->log_mutex);

 if (c->ro_media) {
  err = -EROFS;
  goto out_unlock;
 }


 if (empty_log_bytes(c) - c->ref_node_alsz < c->min_log_bytes) {
  dbg_log("not enough log space - %lld, required %d",
   empty_log_bytes(c), c->min_log_bytes);
  ubifs_commit_required(c);
  err = -EAGAIN;
  goto out_unlock;
 }
 if (c->bud_bytes + c->leb_size - offs > c->max_bud_bytes) {
  dbg_log("bud bytes %lld (%lld max), require commit",
   c->bud_bytes, c->max_bud_bytes);
  ubifs_commit_required(c);
  err = -EAGAIN;
  goto out_unlock;
 }






 if (c->bud_bytes >= c->bg_bud_bytes &&
     c->cmt_state == COMMIT_RESTING) {
  dbg_log("bud bytes %lld (%lld max), initiate BG commit",
   c->bud_bytes, c->max_bud_bytes);
  ubifs_request_bg_commit(c);
 }

 bud->lnum = lnum;
 bud->start = offs;
 bud->jhead = jhead;

 ref->ch.node_type = UBIFS_REF_NODE;
 ref->lnum = cpu_to_le32(bud->lnum);
 ref->offs = cpu_to_le32(bud->start);
 ref->jhead = cpu_to_le32(jhead);

 if (c->lhead_offs > c->leb_size - c->ref_node_alsz) {
  c->lhead_lnum = next_log_lnum(c, c->lhead_lnum);
  c->lhead_offs = 0;
 }

 if (c->lhead_offs == 0) {

  err = ubifs_leb_unmap(c, c->lhead_lnum);
  if (err)
   goto out_unlock;
 }

 if (bud->start == 0) {







  err = ubi_leb_map(c->ubi, bud->lnum, UBI_SHORTTERM);
  if (err)
   goto out_unlock;
 }

 dbg_log("write ref LEB %d:%d",
  c->lhead_lnum, c->lhead_offs);
 err = ubifs_write_node(c, ref, UBIFS_REF_NODE_SZ, c->lhead_lnum,
          c->lhead_offs, UBI_SHORTTERM);
 if (err)
  goto out_unlock;

 c->lhead_offs += c->ref_node_alsz;

 ubifs_add_bud(c, bud);

 mutex_unlock(&c->log_mutex);
 kfree(ref);
 return 0;

out_unlock:
 if (err != -EAGAIN)
  ubifs_ro_mode(c, err);
 mutex_unlock(&c->log_mutex);
 kfree(ref);
 kfree(bud);
 return err;
}
