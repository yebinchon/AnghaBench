
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;


 int NR_MLOCK ;
 int UNEVICTABLE_MLOCKFREED ;
 int __count_vm_event (int ) ;
 int __dec_zone_page_state (struct page*,int ) ;

__attribute__((used)) static inline void free_page_mlock(struct page *page)
{
 __dec_zone_page_state(page, NR_MLOCK);
 __count_vm_event(UNEVICTABLE_MLOCKFREED);
}
