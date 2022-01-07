
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mon_pgmap {unsigned char* ptr; int pg; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int free_page (unsigned long) ;
 unsigned long get_zeroed_page (int ) ;
 int virt_to_page (void*) ;

__attribute__((used)) static int mon_alloc_buff(struct mon_pgmap *map, int npages)
{
 int n;
 unsigned long vaddr;

 for (n = 0; n < npages; n++) {
  vaddr = get_zeroed_page(GFP_KERNEL);
  if (vaddr == 0) {
   while (n-- != 0)
    free_page((unsigned long) map[n].ptr);
   return -ENOMEM;
  }
  map[n].ptr = (unsigned char *) vaddr;
  map[n].pg = virt_to_page((void *) vaddr);
 }
 return 0;
}
