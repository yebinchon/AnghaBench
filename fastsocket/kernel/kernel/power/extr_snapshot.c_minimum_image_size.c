
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NR_ACTIVE_ANON ;
 int NR_ACTIVE_FILE ;
 int NR_FILE_MAPPED ;
 int NR_INACTIVE_ANON ;
 int NR_INACTIVE_FILE ;
 int NR_SLAB_RECLAIMABLE ;
 unsigned long global_page_state (int ) ;

__attribute__((used)) static unsigned long minimum_image_size(unsigned long saveable)
{
 unsigned long size;

 size = global_page_state(NR_SLAB_RECLAIMABLE)
  + global_page_state(NR_ACTIVE_ANON)
  + global_page_state(NR_INACTIVE_ANON)
  + global_page_state(NR_ACTIVE_FILE)
  + global_page_state(NR_INACTIVE_FILE)
  - global_page_state(NR_FILE_MAPPED);

 return saveable <= size ? 0 : saveable - size;
}
