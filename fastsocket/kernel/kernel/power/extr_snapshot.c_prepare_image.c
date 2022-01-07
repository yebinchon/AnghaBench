
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct memory_bitmap {int dummy; } ;
struct linked_page {struct linked_page* next; } ;


 unsigned int DIV_ROUND_UP (unsigned int,int ) ;
 int ENOMEM ;
 int GFP_ATOMIC ;
 int PBES_PER_LINKED_PAGE ;
 int PG_SAFE ;
 int PG_UNSAFE_CLEAR ;
 int PG_UNSAFE_KEEP ;
 unsigned int allocated_unsafe_pages ;
 struct linked_page* buffer ;
 unsigned int count_highmem_image_pages (struct memory_bitmap*) ;
 int duplicate_memory_bitmap (struct memory_bitmap*,struct memory_bitmap*) ;
 int free_image_page (struct linked_page*,int ) ;
 struct linked_page* get_image_page (int ,int ) ;
 scalar_t__ get_zeroed_page (int ) ;
 int mark_unsafe_pages (struct memory_bitmap*) ;
 int memory_bm_create (struct memory_bitmap*,int ,int ) ;
 int memory_bm_free (struct memory_bitmap*,int ) ;
 unsigned int nr_copy_pages ;
 int prepare_highmem_image (struct memory_bitmap*,unsigned int*) ;
 struct linked_page* safe_pages_list ;
 int swsusp_free () ;
 int swsusp_page_is_free (int ) ;
 int swsusp_set_page_forbidden (int ) ;
 int swsusp_set_page_free (int ) ;
 int virt_to_page (struct linked_page*) ;

__attribute__((used)) static int
prepare_image(struct memory_bitmap *new_bm, struct memory_bitmap *bm)
{
 unsigned int nr_pages, nr_highmem;
 struct linked_page *sp_list, *lp;
 int error;


 free_image_page(buffer, PG_UNSAFE_CLEAR);
 buffer = ((void*)0);

 nr_highmem = count_highmem_image_pages(bm);
 error = mark_unsafe_pages(bm);
 if (error)
  goto Free;

 error = memory_bm_create(new_bm, GFP_ATOMIC, PG_SAFE);
 if (error)
  goto Free;

 duplicate_memory_bitmap(new_bm, bm);
 memory_bm_free(bm, PG_UNSAFE_KEEP);
 if (nr_highmem > 0) {
  error = prepare_highmem_image(bm, &nr_highmem);
  if (error)
   goto Free;
 }






 sp_list = ((void*)0);

 nr_pages = nr_copy_pages - nr_highmem - allocated_unsafe_pages;
 nr_pages = DIV_ROUND_UP(nr_pages, PBES_PER_LINKED_PAGE);
 while (nr_pages > 0) {
  lp = get_image_page(GFP_ATOMIC, PG_SAFE);
  if (!lp) {
   error = -ENOMEM;
   goto Free;
  }
  lp->next = sp_list;
  sp_list = lp;
  nr_pages--;
 }

 safe_pages_list = ((void*)0);
 nr_pages = nr_copy_pages - nr_highmem - allocated_unsafe_pages;
 while (nr_pages > 0) {
  lp = (struct linked_page *)get_zeroed_page(GFP_ATOMIC);
  if (!lp) {
   error = -ENOMEM;
   goto Free;
  }
  if (!swsusp_page_is_free(virt_to_page(lp))) {

   lp->next = safe_pages_list;
   safe_pages_list = lp;
  }

  swsusp_set_page_forbidden(virt_to_page(lp));
  swsusp_set_page_free(virt_to_page(lp));
  nr_pages--;
 }

 while (sp_list) {
  lp = sp_list->next;
  free_image_page(sp_list, PG_UNSAFE_CLEAR);
  sp_list = lp;
 }
 return 0;

 Free:
 swsusp_free();
 return error;
}
