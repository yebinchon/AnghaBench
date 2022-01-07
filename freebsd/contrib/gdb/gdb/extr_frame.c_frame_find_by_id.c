
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct frame_info {int dummy; } ;
struct frame_id {int dummy; } ;


 scalar_t__ frame_id_eq (struct frame_id,struct frame_id) ;
 scalar_t__ frame_id_inner (struct frame_id,struct frame_id) ;
 int frame_id_p (struct frame_id) ;
 struct frame_info* get_current_frame () ;
 struct frame_id get_frame_id (struct frame_info*) ;
 struct frame_info* get_prev_frame (struct frame_info*) ;

struct frame_info *
frame_find_by_id (struct frame_id id)
{
  struct frame_info *frame;



  if (!frame_id_p (id))
    return ((void*)0);

  for (frame = get_current_frame ();
       frame != ((void*)0);
       frame = get_prev_frame (frame))
    {
      struct frame_id this = get_frame_id (frame);
      if (frame_id_eq (id, this))

 return frame;
      if (frame_id_inner (id, this))

 return ((void*)0);




    }
  return ((void*)0);
}
