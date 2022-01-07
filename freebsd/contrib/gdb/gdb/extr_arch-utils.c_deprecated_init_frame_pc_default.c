
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct frame_info {int dummy; } ;
typedef int CORE_ADDR ;


 int DEPRECATED_FRAME_SAVED_PC (int *) ;
 int DEPRECATED_SAVED_PC_AFTER_CALL (int *) ;
 scalar_t__ DEPRECATED_SAVED_PC_AFTER_CALL_P () ;
 int * get_next_frame (struct frame_info*) ;
 int read_pc () ;

CORE_ADDR
deprecated_init_frame_pc_default (int fromleaf, struct frame_info *prev)
{
  if (fromleaf && DEPRECATED_SAVED_PC_AFTER_CALL_P ())
    return DEPRECATED_SAVED_PC_AFTER_CALL (get_next_frame (prev));
  else if (get_next_frame (prev) != ((void*)0))
    return DEPRECATED_FRAME_SAVED_PC (get_next_frame (prev));
  else
    return read_pc ();
}
