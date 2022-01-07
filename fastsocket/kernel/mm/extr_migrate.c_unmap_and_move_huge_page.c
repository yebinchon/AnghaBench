
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int lru; } ;
struct anon_vma {int dummy; } ;
typedef struct page* (* new_page_t ) (struct page*,unsigned long,int**) ;
typedef enum migrate_mode { ____Placeholder_migrate_mode } migrate_mode ;


 int EAGAIN ;
 int ENOMEM ;
 int MIGRATE_SYNC ;
 scalar_t__ PageAnon (struct page*) ;
 int TTU_IGNORE_ACCESS ;
 int TTU_IGNORE_MLOCK ;
 int TTU_MIGRATION ;
 int drop_anon_vma (struct anon_vma*) ;
 int get_anon_vma (struct anon_vma*) ;
 int list_del (int *) ;
 int lock_page (struct page*) ;
 int move_to_new_page (struct page*,struct page*,int,int) ;
 struct anon_vma* page_lock_anon_vma (struct page*) ;
 int page_mapped (struct page*) ;
 int page_to_nid (struct page*) ;
 int page_unlock_anon_vma (struct anon_vma*) ;
 int put_page (struct page*) ;
 int remove_migration_ptes (struct page*,struct page*) ;
 int try_to_unmap (struct page*,int) ;
 int trylock_page (struct page*) ;
 int unlock_page (struct page*) ;

__attribute__((used)) static int unmap_and_move_huge_page(new_page_t get_new_page,
    unsigned long private, struct page *hpage,
    int force, bool offlining,
    enum migrate_mode mode)
{
 int rc = 0;
 int *result = ((void*)0);
 struct page *new_hpage = get_new_page(hpage, private, &result);
 struct anon_vma *anon_vma = ((void*)0);

 if (!new_hpage)
  return -ENOMEM;

 rc = -EAGAIN;

 if (!trylock_page(hpage)) {
  if (!force || mode != MIGRATE_SYNC)
   goto out;
  lock_page(hpage);
 }

 if (PageAnon(hpage)) {
  anon_vma = page_lock_anon_vma(hpage);
  if (anon_vma) {
   get_anon_vma(anon_vma);
   page_unlock_anon_vma(anon_vma);
  }
 }

 try_to_unmap(hpage, TTU_MIGRATION|TTU_IGNORE_MLOCK|TTU_IGNORE_ACCESS);

 if (!page_mapped(hpage))
  rc = move_to_new_page(new_hpage, hpage, 1, mode);

 if (rc)
  remove_migration_ptes(hpage, hpage);

 if (anon_vma)
  drop_anon_vma(anon_vma);
out:
 unlock_page(hpage);

 if (rc != -EAGAIN) {
  list_del(&hpage->lru);
  put_page(hpage);
 }

 put_page(new_hpage);

 if (result) {
  if (rc)
   *result = rc;
  else
   *result = page_to_nid(new_hpage);
 }
 return rc;
}
