
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ PIDGET (int ) ;
 int flush_cached_frames () ;
 int get_current_frame () ;
 int inferior_ptid ;
 int select_frame (int ) ;

void
reinit_frame_cache (void)
{
  flush_cached_frames ();


  if (PIDGET (inferior_ptid) != 0)
    {
      select_frame (get_current_frame ());
    }
}
