
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ggc_statistics {int dummy; } ;
typedef int stats ;
struct TYPE_6__ {size_t num_free_objects; scalar_t__ bytes; struct TYPE_6__* next; } ;
typedef TYPE_2__ page_entry ;
struct TYPE_5__ {int * total_allocated_per_order; int * total_overhead_per_order; int total_allocated_under128; int total_overhead_under128; int total_allocated_under64; int total_overhead_under64; int total_allocated_under32; int total_overhead_under32; int total_allocated; int total_overhead; } ;
struct TYPE_7__ {size_t bytes_mapped; size_t allocated; TYPE_1__ stats; TYPE_2__** pages; scalar_t__ allocated_last_gc; } ;


 scalar_t__ BITMAP_SIZE (size_t) ;
 TYPE_4__ G ;
 unsigned int NUM_ORDERS ;
 size_t OBJECTS_IN_PAGE (TYPE_2__*) ;
 int OBJECT_SIZE (unsigned int) ;
 int SCALE (size_t) ;
 int STAT_LABEL (size_t) ;
 int fprintf (int ,char*,...) ;
 int ggc_print_common_statistics (int ,struct ggc_statistics*) ;
 int memset (struct ggc_statistics*,int ,int) ;
 int release_pages () ;
 int stderr ;

void
ggc_print_statistics (void)
{
  struct ggc_statistics stats;
  unsigned int i;
  size_t total_overhead = 0;


  memset (&stats, 0, sizeof (stats));


  G.allocated_last_gc = 0;


  ggc_print_common_statistics (stderr, &stats);



  release_pages ();



  fprintf (stderr,
           "Memory still allocated at the end of the compilation process\n");
  fprintf (stderr, "%-5s %10s  %10s  %10s\n",
    "Size", "Allocated", "Used", "Overhead");
  for (i = 0; i < NUM_ORDERS; ++i)
    {
      page_entry *p;
      size_t allocated;
      size_t in_use;
      size_t overhead;


      if (!G.pages[i])
 continue;

      overhead = allocated = in_use = 0;




      for (p = G.pages[i]; p; p = p->next)
 {
   allocated += p->bytes;
   in_use +=
     (OBJECTS_IN_PAGE (p) - p->num_free_objects) * OBJECT_SIZE (i);

   overhead += (sizeof (page_entry) - sizeof (long)
         + BITMAP_SIZE (OBJECTS_IN_PAGE (p) + 1));
 }
      fprintf (stderr, "%-5lu %10lu%c %10lu%c %10lu%c\n",
        (unsigned long) OBJECT_SIZE (i),
        SCALE (allocated), STAT_LABEL (allocated),
        SCALE (in_use), STAT_LABEL (in_use),
        SCALE (overhead), STAT_LABEL (overhead));
      total_overhead += overhead;
    }
  fprintf (stderr, "%-5s %10lu%c %10lu%c %10lu%c\n", "Total",
    SCALE (G.bytes_mapped), STAT_LABEL (G.bytes_mapped),
    SCALE (G.allocated), STAT_LABEL(G.allocated),
    SCALE (total_overhead), STAT_LABEL (total_overhead));
}
