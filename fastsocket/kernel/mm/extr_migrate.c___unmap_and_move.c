
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int mapping; } ;
struct mem_cgroup {int dummy; } ;
struct anon_vma {int dummy; } ;
typedef enum migrate_mode { ____Placeholder_migrate_mode } migrate_mode ;
struct TYPE_2__ {int flags; } ;


 int BUG_ON (int) ;
 int EAGAIN ;
 int EBUSY ;
 int ENOMEM ;
 int MIGRATE_ASYNC ;
 int MIGRATE_SYNC ;
 int PF_MEMALLOC ;
 scalar_t__ PageAnon (struct page*) ;
 int PageKsm (struct page*) ;
 scalar_t__ PageSwapCache (struct page*) ;
 scalar_t__ PageWriteback (struct page*) ;
 int TTU_IGNORE_ACCESS ;
 int TTU_IGNORE_MLOCK ;
 int TTU_MIGRATION ;
 int VM_BUG_ON (scalar_t__) ;
 TYPE_1__* current ;
 int drop_anon_vma (struct anon_vma*) ;
 int get_anon_vma (struct anon_vma*) ;
 int lock_page (struct page*) ;
 int mem_cgroup_end_migration (struct mem_cgroup*,struct page*,struct page*,int) ;
 int mem_cgroup_prepare_migration (struct page*,struct page*,struct mem_cgroup**) ;
 int move_to_new_page (struct page*,struct page*,int,int) ;
 scalar_t__ page_has_private (struct page*) ;
 struct anon_vma* page_lock_anon_vma (struct page*) ;
 int page_mapped (struct page*) ;
 int page_unlock_anon_vma (struct anon_vma*) ;
 int remove_migration_ptes (struct page*,struct page*) ;
 int try_to_free_buffers (struct page*) ;
 int try_to_unmap (struct page*,int) ;
 int trylock_page (struct page*) ;
 int unlock_page (struct page*) ;
 int wait_on_page_writeback (struct page*) ;

__attribute__((used)) static int __unmap_and_move(struct page *page, struct page *newpage,
   int force, bool offlining, enum migrate_mode mode)
{
 int rc = -EAGAIN;
 int remap_swapcache = 1;
 int charge = 0;
 struct mem_cgroup *mem = ((void*)0);
 struct anon_vma *anon_vma = ((void*)0);
 if (current->flags & PF_MEMALLOC)
  force = 0;


 rc = -EAGAIN;

 if (!trylock_page(page)) {
  if (!force || mode == MIGRATE_ASYNC)
   goto out;
  lock_page(page);
 }


 charge = mem_cgroup_prepare_migration(page, newpage, &mem);
 if (charge == -ENOMEM) {
  rc = -ENOMEM;
  goto unlock;
 }
 BUG_ON(charge);

 if (PageWriteback(page)) {






  if (mode != MIGRATE_SYNC) {
   rc = -EBUSY;
   goto uncharge;
  }
  if (!force)
   goto uncharge;
  wait_on_page_writeback(page);
 }
 if (PageAnon(page) && !PageKsm(page)) {




  anon_vma = page_lock_anon_vma(page);
  if (anon_vma) {





   get_anon_vma(anon_vma);
   page_unlock_anon_vma(anon_vma);
  }
  else if (PageSwapCache(page)) {
   remap_swapcache = 0;
  } else {
   goto uncharge;
  }
 }
 if (!page->mapping) {
  VM_BUG_ON(PageAnon(page));
  if (page_has_private(page)) {
   try_to_free_buffers(page);
   goto uncharge;
  }
  goto skip_unmap;
 }


 try_to_unmap(page, TTU_MIGRATION|TTU_IGNORE_MLOCK|TTU_IGNORE_ACCESS);

skip_unmap:
 if (!page_mapped(page))
  rc = move_to_new_page(newpage, page, remap_swapcache, mode);

 if (rc && remap_swapcache)
  remove_migration_ptes(page, page);


 if (anon_vma)
  drop_anon_vma(anon_vma);

uncharge:
 if (!charge)
  mem_cgroup_end_migration(mem, page, newpage, rc == 0);
unlock:
 unlock_page(page);
out:
 return rc;
}
