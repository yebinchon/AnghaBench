
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct frame_info {int type; } ;
typedef enum frame_type { ____Placeholder_frame_type } frame_type ;



void
deprecated_set_frame_type (struct frame_info *frame, enum frame_type type)
{

  frame->type = type;
}
