
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pohmelfs_crypto_engine {int iv; } ;
struct pohmelfs_crypto_thread {int size; struct page* page; struct pohmelfs_crypto_engine eng; } ;
struct page {int dummy; } ;


 int PageChecked (struct page*) ;
 int SetPageError (struct page*) ;
 int SetPageUptodate (struct page*) ;
 int WARN_ON (int) ;
 int page_cache_release (struct page*) ;
 int pohmelfs_crypto_process_input_data (struct pohmelfs_crypto_engine*,int ,int *,struct page*,int ) ;
 int pohmelfs_crypto_thread_make_ready (struct pohmelfs_crypto_thread*) ;
 int unlock_page (struct page*) ;

__attribute__((used)) static int pohmelfs_crypto_thread_page(struct pohmelfs_crypto_thread *t)
{
 struct pohmelfs_crypto_engine *e = &t->eng;
 struct page *page = t->page;
 int err;

 WARN_ON(!PageChecked(page));

 err = pohmelfs_crypto_process_input_data(e, e->iv, ((void*)0), page, t->size);
 if (!err)
  SetPageUptodate(page);
 else
  SetPageError(page);
 unlock_page(page);
 page_cache_release(page);

 pohmelfs_crypto_thread_make_ready(t);

 return err;
}
