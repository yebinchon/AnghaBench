
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fuse_copy_state {int * mapaddr; int pg; scalar_t__ write; } ;


 int KM_USER0 ;
 int flush_dcache_page (int ) ;
 int kunmap_atomic (int *,int ) ;
 int put_page (int ) ;
 int set_page_dirty_lock (int ) ;

__attribute__((used)) static void fuse_copy_finish(struct fuse_copy_state *cs)
{
 if (cs->mapaddr) {
  kunmap_atomic(cs->mapaddr, KM_USER0);
  if (cs->write) {
   flush_dcache_page(cs->pg);
   set_page_dirty_lock(cs->pg);
  }
  put_page(cs->pg);
  cs->mapaddr = ((void*)0);
 }
}
