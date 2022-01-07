
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
struct pohmelfs_crypto_input_action_data {unsigned int size; int iv; struct pohmelfs_crypto_engine* e; struct page* page; } ;
struct pohmelfs_crypto_engine {int dummy; } ;
struct page {TYPE_1__* mapping; } ;
struct inode {int i_sb; } ;
struct TYPE_2__ {struct inode* host; } ;


 int ENOENT ;
 int POHMELFS_SB (int ) ;
 int SetPageUptodate (struct page*) ;
 int page_cache_release (struct page*) ;
 int pohmelfs_crypt_input_page_action ;
 int pohmelfs_crypto_thread_get (int ,int ,struct pohmelfs_crypto_input_action_data*) ;

int pohmelfs_crypto_process_input_page(struct pohmelfs_crypto_engine *e,
  struct page *page, unsigned int size, u64 iv)
{
 struct inode *inode = page->mapping->host;
 struct pohmelfs_crypto_input_action_data act;
 int err = -ENOENT;

 act.page = page;
 act.e = e;
 act.size = size;
 act.iv = iv;

 err = pohmelfs_crypto_thread_get(POHMELFS_SB(inode->i_sb),
   pohmelfs_crypt_input_page_action, &act);
 if (err)
  goto err_out_exit;

 return 0;

err_out_exit:
 SetPageUptodate(page);
 page_cache_release(page);

 return err;
}
