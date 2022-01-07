
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct alloc_zone {int was_collected; char* name; struct alloc_zone* next_zone; scalar_t__ allocated; scalar_t__ dead; scalar_t__ allocated_last_gc; } ;
struct TYPE_2__ {struct alloc_zone* zones; } ;


 TYPE_1__ G ;
 int GGC_DEBUG_LEVEL ;
 int GGC_MIN_EXPAND ;
 int GGC_MIN_HEAPSIZE ;
 float MAX (float,size_t) ;
 float PARAM_VALUE (int ) ;
 int TV_GC ;
 float calculate_average_page_survival (struct alloc_zone*) ;
 int free (struct alloc_zone*) ;
 int gcc_assert (int) ;
 int ggc_collect_1 (struct alloc_zone*,int) ;
 int ggc_force_collect ;
 struct alloc_zone main_zone ;
 int printf (char*,char*,...) ;
 int release_pages (struct alloc_zone*) ;
 int timevar_pop (int ) ;
 int timevar_push (int ) ;
 int zone_free_marks () ;

void
ggc_collect (void)
{
  struct alloc_zone *zone;
  bool marked = 0;

  timevar_push (TV_GC);

  if (!ggc_force_collect)
    {
      float allocated_last_gc = 0, allocated = 0, min_expand;

      for (zone = G.zones; zone; zone = zone->next_zone)
 {
   allocated_last_gc += zone->allocated_last_gc;
   allocated += zone->allocated;
 }

      allocated_last_gc =
 MAX (allocated_last_gc,
      (size_t) PARAM_VALUE (GGC_MIN_HEAPSIZE) * 1024);
      min_expand = allocated_last_gc * PARAM_VALUE (GGC_MIN_EXPAND) / 100;

      if (allocated < allocated_last_gc + min_expand)
 {
   timevar_pop (TV_GC);
   return;
 }
    }


  main_zone.was_collected = 0;
  marked |= ggc_collect_1 (&main_zone, 1);
  if (main_zone.was_collected)
    {
      struct alloc_zone *zone;

      for (zone = main_zone.next_zone; zone; zone = zone->next_zone)
 {
   zone->was_collected = 0;
   marked |= ggc_collect_1 (zone, !marked);
 }
    }
  if (marked)
    zone_free_marks ();


  for (zone = G.zones; zone && zone->next_zone; zone = zone->next_zone)
    {
      if (zone->next_zone->dead)
 {
   struct alloc_zone *dead_zone = zone->next_zone;

   printf ("Zone `%s' is dead and will be freed.\n", dead_zone->name);


   gcc_assert (!dead_zone->allocated);


   zone->next_zone = zone->next_zone->next_zone;
   release_pages (dead_zone);
   free (dead_zone);
 }
    }

  timevar_pop (TV_GC);
}
