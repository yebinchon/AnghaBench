
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int annotate_frames_invalid () ;
 int * current_frame ;
 int fprintf_unfiltered (int ,char*) ;
 int frame_cache_obstack ;
 scalar_t__ frame_debug ;
 int gdb_stdlog ;
 int obstack_free (int *,int ) ;
 int obstack_init (int *) ;
 int select_frame (int *) ;

void
flush_cached_frames (void)
{

  obstack_free (&frame_cache_obstack, 0);
  obstack_init (&frame_cache_obstack);

  current_frame = ((void*)0);
  select_frame (((void*)0));
  annotate_frames_invalid ();
  if (frame_debug)
    fprintf_unfiltered (gdb_stdlog, "{ flush_cached_frames () }\n");
}
