
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct quicklist {unsigned long nr_pages; } ;


 int free_page (unsigned long) ;
 struct quicklist* get_cpu_var (int ) ;
 long min_pages_to_free (struct quicklist*,unsigned long,unsigned long) ;
 int put_cpu_var (int ) ;
 int quicklist ;
 void* quicklist_alloc (int,int ,int *) ;

void quicklist_trim(int nr, void (*dtor)(void *),
 unsigned long min_pages, unsigned long max_free)
{
 long pages_to_free;
 struct quicklist *q;

 q = &get_cpu_var(quicklist)[nr];
 if (q->nr_pages > min_pages) {
  pages_to_free = min_pages_to_free(q, min_pages, max_free);

  while (pages_to_free > 0) {




   void *p = quicklist_alloc(nr, 0, ((void*)0));

   if (dtor)
    dtor(p);
   free_page((unsigned long)p);
   pages_to_free--;
  }
 }
 put_cpu_var(quicklist);
}
