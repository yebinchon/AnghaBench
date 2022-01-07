
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {float allocated_last_gc; float allocated; unsigned long context_depth_collections; int context_depth; int debug_file; } ;


 TYPE_1__ G ;
 int GGC_DEBUG_LEVEL ;
 int GGC_MIN_EXPAND ;
 int GGC_MIN_HEAPSIZE ;
 float MAX (float,size_t) ;
 float PARAM_VALUE (int ) ;
 int TV_GC ;
 int clear_marks () ;
 int fprintf (int ,char*,...) ;
 int ggc_force_collect ;
 int ggc_mark_roots () ;
 int ggc_prune_overhead_list () ;
 int poison_pages () ;
 int quiet_flag ;
 int release_pages () ;
 int stderr ;
 int sweep_pages () ;
 int timevar_pop (int ) ;
 int timevar_push (int ) ;
 int validate_free_objects () ;

void
ggc_collect (void)
{



  float allocated_last_gc =
    MAX (G.allocated_last_gc, (size_t)PARAM_VALUE (GGC_MIN_HEAPSIZE) * 1024);

  float min_expand = allocated_last_gc * PARAM_VALUE (GGC_MIN_EXPAND) / 100;

  if (G.allocated < allocated_last_gc + min_expand && !ggc_force_collect)
    return;

  timevar_push (TV_GC);
  if (!quiet_flag)
    fprintf (stderr, " {GC %luk -> ", (unsigned long) G.allocated / 1024);
  if (GGC_DEBUG_LEVEL >= 2)
    fprintf (G.debug_file, "BEGIN COLLECTING\n");



  G.allocated = 0;



  release_pages ();


  G.context_depth_collections = ((unsigned long)1 << (G.context_depth + 1)) - 1;

  clear_marks ();
  ggc_mark_roots ();



  poison_pages ();
  validate_free_objects ();
  sweep_pages ();

  G.allocated_last_gc = G.allocated;

  timevar_pop (TV_GC);

  if (!quiet_flag)
    fprintf (stderr, "%luk}", (unsigned long) G.allocated / 1024);
  if (GGC_DEBUG_LEVEL >= 2)
    fprintf (G.debug_file, "END COLLECTING\n");
}
