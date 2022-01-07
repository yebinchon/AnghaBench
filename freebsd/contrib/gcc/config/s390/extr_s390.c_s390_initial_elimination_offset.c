
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int frame_size; int first_save_gpr_slot; int gprs_offset; } ;
typedef int HOST_WIDE_INT ;






 int RETURN_REGNUM ;
 int STACK_POINTER_OFFSET ;
 int UNITS_PER_WORD ;
 TYPE_1__ cfun_frame_layout ;
 int current_function_outgoing_args_size ;
 int gcc_assert (int) ;
 int gcc_unreachable () ;
 int get_frame_size () ;
 int s390_can_eliminate (int,int) ;
 int s390_init_frame_layout () ;

HOST_WIDE_INT
s390_initial_elimination_offset (int from, int to)
{
  HOST_WIDE_INT offset;
  int index;


  if (!s390_can_eliminate (from, to))
    return 0;

  switch (from)
    {
    case 129:
      offset = (get_frame_size()
  + STACK_POINTER_OFFSET
  + current_function_outgoing_args_size);
      break;

    case 131:
      s390_init_frame_layout ();
      offset = cfun_frame_layout.frame_size + STACK_POINTER_OFFSET;
      break;

    case 128:
      s390_init_frame_layout ();
      index = RETURN_REGNUM - cfun_frame_layout.first_save_gpr_slot;
      gcc_assert (index >= 0);
      offset = cfun_frame_layout.frame_size + cfun_frame_layout.gprs_offset;
      offset += index * UNITS_PER_WORD;
      break;

    case 130:
      offset = 0;
      break;

    default:
      gcc_unreachable ();
    }

  return offset;
}
