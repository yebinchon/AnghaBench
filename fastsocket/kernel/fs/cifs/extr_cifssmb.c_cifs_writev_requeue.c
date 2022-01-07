
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct inode {int i_mapping; } ;
struct cifs_writedata {int nr_pages; int * pages; TYPE_2__* cfile; } ;
struct TYPE_4__ {TYPE_1__* dentry; } ;
struct TYPE_3__ {struct inode* d_inode; } ;


 int EAGAIN ;
 int SetPageError (int ) ;
 int cifs_async_writev (struct cifs_writedata*) ;
 int clear_page_dirty_for_io (int ) ;
 int end_page_writeback (int ) ;
 int lock_page (int ) ;
 int mapping_set_error (int ,int) ;
 int page_cache_release (int ) ;
 int unlock_page (int ) ;

__attribute__((used)) static void
cifs_writev_requeue(struct cifs_writedata *wdata)
{
 int i, rc;
 struct inode *inode = wdata->cfile->dentry->d_inode;

 for (i = 0; i < wdata->nr_pages; i++) {
  lock_page(wdata->pages[i]);
  clear_page_dirty_for_io(wdata->pages[i]);
 }

 do {
  rc = cifs_async_writev(wdata);
 } while (rc == -EAGAIN);

 for (i = 0; i < wdata->nr_pages; i++) {
  unlock_page(wdata->pages[i]);
  if (rc != 0) {
   SetPageError(wdata->pages[i]);
   end_page_writeback(wdata->pages[i]);
   page_cache_release(wdata->pages[i]);
  }
 }

 mapping_set_error(inode->i_mapping, rc);
}
