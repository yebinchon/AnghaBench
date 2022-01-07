
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct frame_info frame_info ;


 scalar_t__ DUMMY_FRAME ;
 int generic_pop_dummy_frame () ;
 struct frame_info* get_current_frame () ;
 scalar_t__ get_frame_type (struct frame_info*) ;
 void stub1 (struct frame_info*) ;

void
generic_pop_current_frame (void (*popper) (struct frame_info * frame))
{
  struct frame_info *frame = get_current_frame ();
  if (get_frame_type (frame) == DUMMY_FRAME)


    generic_pop_dummy_frame ();
  else
    (*popper) (frame);
}
