
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct gfs2_trans {int tr_touched; int tr_num_databuf_rm; int tr_num_buf_rm; } ;
struct gfs2_sbd {int sd_ail_lock; int sd_log_num_databuf; int sd_log_num_buf; } ;
struct gfs2_bufdata {int * bd_bh; int bd_blkno; scalar_t__ bd_ail; int bd_list; } ;
struct buffer_head {struct gfs2_bufdata* b_private; int b_blocknr; TYPE_1__* b_page; } ;
struct address_space {int dummy; } ;
struct TYPE_2__ {struct address_space* mapping; } ;


 int brelse (struct buffer_head*) ;
 int clear_buffer_dirty (struct buffer_head*) ;
 int clear_buffer_uptodate (struct buffer_head*) ;
 int gfs2_assert_warn (struct gfs2_sbd*,int ) ;
 int gfs2_bufdata_cachep ;
 struct gfs2_sbd* gfs2_mapping2sbd (struct address_space*) ;
 int gfs2_remove_from_ail (struct gfs2_bufdata*) ;
 int gfs2_trans_add_revoke (struct gfs2_sbd*,struct gfs2_bufdata*) ;
 int kmem_cache_free (int ,struct gfs2_bufdata*) ;
 int list_del_init (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ test_clear_buffer_pinned (struct buffer_head*) ;
 int trace_gfs2_pin (struct gfs2_bufdata*,int ) ;

void gfs2_remove_from_journal(struct buffer_head *bh, struct gfs2_trans *tr, int meta)
{
 struct address_space *mapping = bh->b_page->mapping;
 struct gfs2_sbd *sdp = gfs2_mapping2sbd(mapping);
 struct gfs2_bufdata *bd = bh->b_private;
 int was_pinned = 0;

 if (test_clear_buffer_pinned(bh)) {
  trace_gfs2_pin(bd, 0);
  list_del_init(&bd->bd_list);
  if (meta) {
   gfs2_assert_warn(sdp, sdp->sd_log_num_buf);
   sdp->sd_log_num_buf--;
   tr->tr_num_buf_rm++;
  } else {
   gfs2_assert_warn(sdp, sdp->sd_log_num_databuf);
   sdp->sd_log_num_databuf--;
   tr->tr_num_databuf_rm++;
  }
  tr->tr_touched = 1;
  brelse(bh);
  was_pinned = 1;
 }
 if (bd) {
  spin_lock(&sdp->sd_ail_lock);
  if (bd->bd_ail) {
   bh->b_private = ((void*)0);
   bd->bd_blkno = bh->b_blocknr;
   gfs2_remove_from_ail(bd);
   bd->bd_bh = ((void*)0);
   gfs2_trans_add_revoke(sdp, bd);
  } else if (was_pinned) {
   bh->b_private = ((void*)0);
   kmem_cache_free(gfs2_bufdata_cachep, bd);
  }
  spin_unlock(&sdp->sd_ail_lock);
 }
 clear_buffer_dirty(bh);
 clear_buffer_uptodate(bh);
}
