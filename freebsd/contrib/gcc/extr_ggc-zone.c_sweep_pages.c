
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {char* page; int survived; int large_p; } ;
struct small_page_entry {int* mark_bits; unsigned int* alloc_bits; struct small_page_entry* next; TYPE_3__ common; } ;
struct TYPE_4__ {int large_p; char* page; int survived; } ;
struct large_page_entry {int mark_p; TYPE_2__* prev; struct large_page_entry* next; TYPE_1__ common; scalar_t__ bytes; } ;
struct alloc_zone {char* free_chunks; size_t allocated; struct small_page_entry* pages; struct large_page_entry* large_pages; scalar_t__ cached_free_size; int * cached_free; scalar_t__ high_free_bin; } ;
typedef int mark_type ;
typedef unsigned int alloc_type ;
struct TYPE_5__ {struct large_page_entry* next; } ;


 unsigned int BYTES_PER_ALLOC_BIT ;
 unsigned int BYTES_PER_MARK_BIT ;
 int SMALL_PAGE_SIZE ;
 int VALGRIND_DISCARD (int ) ;
 int VALGRIND_MAKE_WRITABLE (char*,int) ;
 unsigned int alloc_ffs (unsigned int) ;
 int free_chunk (char*,int,struct alloc_zone*) ;
 int free_large_page (struct large_page_entry*) ;
 int free_small_page (struct small_page_entry*) ;
 int gcc_assert (int) ;
 int memset (char*,int,int) ;
 int poison_region (char*,int) ;
 int zone_clear_object_alloc_bit (struct small_page_entry*,char*) ;

__attribute__((used)) static void
sweep_pages (struct alloc_zone *zone)
{
  struct large_page_entry **lpp, *lp, *lnext;
  struct small_page_entry **spp, *sp, *snext;
  char *last_free;
  size_t allocated = 0;
  bool nomarksinpage;



  memset (zone->free_chunks, 0, sizeof (zone->free_chunks));
  zone->high_free_bin = 0;
  zone->cached_free = ((void*)0);
  zone->cached_free_size = 0;



  lpp = &zone->large_pages;
  for (lp = zone->large_pages; lp != ((void*)0); lp = lnext)
    {
      gcc_assert (lp->common.large_p);

      lnext = lp->next;






      if (lp->mark_p)
 {
   lp->mark_p = 0;
   allocated += lp->bytes;
   lpp = &lp->next;
 }
      else
 {
   *lpp = lnext;




   if (lp->prev)
     lp->prev->next = lp->next;
   if (lp->next)
     lp->next->prev = lp->prev;
   free_large_page (lp);
 }
    }

  spp = &zone->pages;
  for (sp = zone->pages; sp != ((void*)0); sp = snext)
    {
      char *object, *last_object;
      char *end;
      alloc_type *alloc_word_p;
      mark_type *mark_word_p;

      gcc_assert (!sp->common.large_p);

      snext = sp->next;
      last_object = object = sp->common.page;
      end = sp->common.page + SMALL_PAGE_SIZE;
      last_free = ((void*)0);
      nomarksinpage = 1;
      mark_word_p = sp->mark_bits;
      alloc_word_p = sp->alloc_bits;

      gcc_assert (BYTES_PER_ALLOC_BIT == BYTES_PER_MARK_BIT);

      object = sp->common.page;
      do
 {
   unsigned int i, n;
   alloc_type alloc_word;
   mark_type mark_word;

   alloc_word = *alloc_word_p++;
   mark_word = *mark_word_p++;

   if (mark_word)
     nomarksinpage = 0;


   i = 0;
   while ((n = alloc_ffs (alloc_word)) != 0)
     {



       alloc_word >>= n - 1;
       mark_word >>= n - 1;
       object += BYTES_PER_MARK_BIT * (n - 1);

       if (mark_word & 1)
  {
    if (last_free)
      {
        VALGRIND_DISCARD (VALGRIND_MAKE_WRITABLE (last_free,
        object
        - last_free));
        poison_region (last_free, object - last_free);
        free_chunk (last_free, object - last_free, zone);
        last_free = ((void*)0);
      }
    else
      allocated += object - last_object;
    last_object = object;
  }
       else
  {
    if (last_free == ((void*)0))
      {
        last_free = object;
        allocated += object - last_object;
      }
    else
      zone_clear_object_alloc_bit (sp, object);
  }


       alloc_word >>= 1;
       mark_word >>= 1;
       object += BYTES_PER_MARK_BIT;

       i += n;
     }

   object += BYTES_PER_MARK_BIT * (8 * sizeof (alloc_type) - i);
 }
      while (object < end);

      if (nomarksinpage)
 {
   *spp = snext;





   free_small_page (sp);
   continue;
 }
      else if (last_free)
 {
   VALGRIND_DISCARD (VALGRIND_MAKE_WRITABLE (last_free,
          object - last_free));
   poison_region (last_free, object - last_free);
   free_chunk (last_free, object - last_free, zone);
 }
      else
 allocated += object - last_object;

      spp = &sp->next;
    }

  zone->allocated = allocated;
}
