
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct frame_info {int dummy; } ;


 struct frame_info* deprecated_selected_frame ;
 int gdb_assert (int ) ;
 int get_current_frame () ;
 int select_frame (int ) ;

struct frame_info *
get_selected_frame (void)
{
  if (deprecated_selected_frame == ((void*)0))



    select_frame (get_current_frame ());

  gdb_assert (deprecated_selected_frame != ((void*)0));
  return deprecated_selected_frame;
}
