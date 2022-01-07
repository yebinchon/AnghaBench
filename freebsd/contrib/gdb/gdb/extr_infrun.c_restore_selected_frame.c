
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct frame_info {int dummy; } ;
struct frame_id {int dummy; } ;


 struct frame_info* frame_find_by_id (struct frame_id) ;
 int select_frame (struct frame_info*) ;
 int warning (char*) ;

__attribute__((used)) static int
restore_selected_frame (void *args)
{
  struct frame_id *fid = (struct frame_id *) args;
  struct frame_info *frame;

  frame = frame_find_by_id (*fid);



  if (frame == ((void*)0))
    {
      warning ("Unable to restore previously selected frame.\n");
      return 0;
    }

  select_frame (frame);

  return (1);
}
