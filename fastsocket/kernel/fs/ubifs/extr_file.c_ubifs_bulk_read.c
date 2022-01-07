
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ubifs_inode {scalar_t__ last_page_read; int read_in_a_row; int bulk_read; int ui_mutex; } ;
struct bu_info {int key; int buf_len; int * buf; } ;
struct ubifs_info {int bu_mutex; int max_bu_buf_len; struct bu_info bu; int bulk_read; } ;
struct page {scalar_t__ index; TYPE_1__* mapping; } ;
struct inode {int i_ino; TYPE_2__* i_sb; } ;
typedef scalar_t__ pgoff_t ;
struct TYPE_4__ {struct ubifs_info* s_fs_info; } ;
struct TYPE_3__ {struct inode* host; } ;


 int GFP_NOFS ;
 int UBIFS_BLOCKS_PER_PAGE_SHIFT ;
 int __GFP_NOWARN ;
 int data_key_init (struct ubifs_info*,int *,int ,int) ;
 int kfree (struct bu_info*) ;
 struct bu_info* kmalloc (int,int) ;
 scalar_t__ mutex_trylock (int *) ;
 int mutex_unlock (int *) ;
 int ubifs_do_bulk_read (struct ubifs_info*,struct bu_info*,struct page*) ;
 struct ubifs_inode* ubifs_inode (struct inode*) ;

__attribute__((used)) static int ubifs_bulk_read(struct page *page)
{
 struct inode *inode = page->mapping->host;
 struct ubifs_info *c = inode->i_sb->s_fs_info;
 struct ubifs_inode *ui = ubifs_inode(inode);
 pgoff_t index = page->index, last_page_read = ui->last_page_read;
 struct bu_info *bu;
 int err = 0, allocated = 0;

 ui->last_page_read = index;
 if (!c->bulk_read)
  return 0;





 if (!mutex_trylock(&ui->ui_mutex))
  return 0;

 if (index != last_page_read + 1) {

  ui->read_in_a_row = 1;
  if (ui->bulk_read)
   ui->bulk_read = 0;
  goto out_unlock;
 }

 if (!ui->bulk_read) {
  ui->read_in_a_row += 1;
  if (ui->read_in_a_row < 3)
   goto out_unlock;

  ui->bulk_read = 1;
 }





 if (mutex_trylock(&c->bu_mutex))
  bu = &c->bu;
 else {
  bu = kmalloc(sizeof(struct bu_info), GFP_NOFS | __GFP_NOWARN);
  if (!bu)
   goto out_unlock;

  bu->buf = ((void*)0);
  allocated = 1;
 }

 bu->buf_len = c->max_bu_buf_len;
 data_key_init(c, &bu->key, inode->i_ino,
        page->index << UBIFS_BLOCKS_PER_PAGE_SHIFT);
 err = ubifs_do_bulk_read(c, bu, page);

 if (!allocated)
  mutex_unlock(&c->bu_mutex);
 else
  kfree(bu);

out_unlock:
 mutex_unlock(&ui->ui_mutex);
 return err;
}
