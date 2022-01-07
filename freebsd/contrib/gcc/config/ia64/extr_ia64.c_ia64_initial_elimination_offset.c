
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ total_size; } ;
typedef scalar_t__ HOST_WIDE_INT ;






 TYPE_1__ current_frame_info ;
 int current_function_is_leaf ;
 scalar_t__ current_function_outgoing_args_size ;
 scalar_t__ current_function_pretend_args_size ;
 int gcc_unreachable () ;
 int get_frame_size () ;
 int ia64_compute_frame_size (int ) ;

HOST_WIDE_INT
ia64_initial_elimination_offset (int from, int to)
{
  HOST_WIDE_INT offset;

  ia64_compute_frame_size (get_frame_size ());
  switch (from)
    {
    case 130:
      switch (to)
 {
 case 129:
   if (current_function_is_leaf)
     offset = -current_frame_info.total_size;
   else
     offset = -(current_frame_info.total_size
         - current_function_outgoing_args_size - 16);
   break;

 case 128:
   if (current_function_is_leaf)
     offset = 0;
   else
     offset = 16 + current_function_outgoing_args_size;
   break;

 default:
   gcc_unreachable ();
 }
      break;

    case 131:


      switch (to)
 {
 case 129:
   offset = 16 - current_function_pretend_args_size;
   break;

 case 128:
   offset = (current_frame_info.total_size
      + 16 - current_function_pretend_args_size);
   break;

 default:
   gcc_unreachable ();
 }
      break;

    default:
      gcc_unreachable ();
    }

  return offset;
}
