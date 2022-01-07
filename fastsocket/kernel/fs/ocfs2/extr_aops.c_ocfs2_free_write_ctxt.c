
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ocfs2_write_ctxt {int w_di_bh; int w_num_pages; int w_pages; } ;


 int brelse (int ) ;
 int kfree (struct ocfs2_write_ctxt*) ;
 int ocfs2_unlock_and_free_pages (int ,int ) ;

__attribute__((used)) static void ocfs2_free_write_ctxt(struct ocfs2_write_ctxt *wc)
{
 ocfs2_unlock_and_free_pages(wc->w_pages, wc->w_num_pages);

 brelse(wc->w_di_bh);
 kfree(wc);
}
