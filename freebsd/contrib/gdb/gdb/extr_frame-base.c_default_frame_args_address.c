
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct frame_info {int dummy; } ;
typedef int CORE_ADDR ;


 int DEPRECATED_FRAME_ARGS_ADDRESS (struct frame_info*) ;
 scalar_t__ DEPRECATED_FRAME_ARGS_ADDRESS_P () ;
 int default_frame_base_address (struct frame_info*,void**) ;
 struct frame_info* get_prev_frame (struct frame_info*) ;

__attribute__((used)) static CORE_ADDR
default_frame_args_address (struct frame_info *next_frame, void **this_cache)
{
  if (DEPRECATED_FRAME_ARGS_ADDRESS_P ())
    {
      struct frame_info *this_frame = get_prev_frame (next_frame);
      return DEPRECATED_FRAME_ARGS_ADDRESS (this_frame);
    }
  return default_frame_base_address (next_frame, this_cache);
}
