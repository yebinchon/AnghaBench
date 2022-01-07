
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct alloc_zone {char* name; int was_collected; scalar_t__ allocated; scalar_t__ allocated_last_gc; struct alloc_chunk** free_chunks; } ;
struct alloc_chunk {struct alloc_chunk* next_free; scalar_t__ size; } ;


 int NUM_FREE_BINS ;
 int fprintf (int ,char*,...) ;
 int ggc_mark_roots () ;
 int ggc_prune_overhead_list () ;
 int quiet_flag ;
 int release_pages (struct alloc_zone*) ;
 int stderr ;
 int sweep_pages (struct alloc_zone*) ;
 int zone_allocate_marks () ;

__attribute__((used)) static bool
ggc_collect_1 (struct alloc_zone *zone, bool need_marking)
{
  if (!quiet_flag)
    fprintf (stderr, " {%s GC %luk -> ",
      zone->name, (unsigned long) zone->allocated / 1024);



  zone->allocated = 0;



  release_pages (zone);

  if (need_marking)
    {
      zone_allocate_marks ();
      ggc_mark_roots ();



    }

  sweep_pages (zone);
  zone->was_collected = 1;
  zone->allocated_last_gc = zone->allocated;

  if (!quiet_flag)
    fprintf (stderr, "%luk}", (unsigned long) zone->allocated / 1024);
  return 1;
}
