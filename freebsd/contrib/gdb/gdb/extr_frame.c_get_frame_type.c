
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct frame_info {scalar_t__ type; TYPE_1__* unwind; int next; } ;
typedef enum frame_type { ____Placeholder_frame_type } frame_type ;
struct TYPE_2__ {scalar_t__ type; } ;


 int DEPRECATED_USE_GENERIC_DUMMY_FRAMES ;
 int DUMMY_FRAME ;
 int NORMAL_FRAME ;
 scalar_t__ UNKNOWN_FRAME ;
 int current_gdbarch ;
 scalar_t__ deprecated_frame_in_dummy (struct frame_info*) ;
 TYPE_1__* frame_unwind_find_by_frame (int ) ;
 int legacy_frame_p (int ) ;

enum frame_type
get_frame_type (struct frame_info *frame)
{


  if (!DEPRECATED_USE_GENERIC_DUMMY_FRAMES
      && deprecated_frame_in_dummy (frame))
    return DUMMY_FRAME;





  if (frame->unwind == ((void*)0) && !legacy_frame_p (current_gdbarch))
    {


      frame->unwind = frame_unwind_find_by_frame (frame->next);





      frame->type = frame->unwind->type;
    }
  if (frame->type == UNKNOWN_FRAME)
    return NORMAL_FRAME;
  else
    return frame->type;
}
