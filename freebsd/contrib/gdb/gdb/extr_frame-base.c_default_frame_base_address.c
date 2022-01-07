
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct frame_info {int dummy; } ;
typedef int CORE_ADDR ;


 int get_frame_base (struct frame_info*) ;
 struct frame_info* get_prev_frame (struct frame_info*) ;

__attribute__((used)) static CORE_ADDR
default_frame_base_address (struct frame_info *next_frame, void **this_cache)
{
  struct frame_info *this_frame = get_prev_frame (next_frame);
  return get_frame_base (this_frame);
}
