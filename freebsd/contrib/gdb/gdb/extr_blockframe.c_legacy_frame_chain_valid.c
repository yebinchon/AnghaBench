
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct frame_info {int dummy; } ;
typedef scalar_t__ CORE_ADDR ;


 int DEPRECATED_FRAME_CHAIN_VALID (scalar_t__,struct frame_info*) ;
 scalar_t__ DEPRECATED_FRAME_CHAIN_VALID_P () ;
 scalar_t__ DEPRECATED_PC_IN_CALL_DUMMY (int ,int ,int ) ;
 scalar_t__ DEPRECATED_USE_GENERIC_DUMMY_FRAMES ;
 scalar_t__ INNER_THAN (scalar_t__,int ) ;
 scalar_t__ deprecated_inside_entry_file (int ) ;
 int frame_pc_unwind (struct frame_info*) ;
 int get_frame_base (struct frame_info*) ;
 int get_frame_pc (struct frame_info*) ;
 scalar_t__ legacy_inside_entry_func (int ) ;

int
legacy_frame_chain_valid (CORE_ADDR fp, struct frame_info *fi)
{

  if (DEPRECATED_USE_GENERIC_DUMMY_FRAMES
      && DEPRECATED_PC_IN_CALL_DUMMY (get_frame_pc (fi), 0, 0))
    return 1;


  if (fp == 0)
    return 0;



  if (INNER_THAN (fp, get_frame_base (fi)))
    return 0;



  if (DEPRECATED_FRAME_CHAIN_VALID_P ())
    return DEPRECATED_FRAME_CHAIN_VALID (fp, fi);



  if (legacy_inside_entry_func (get_frame_pc (fi)))
    return 0;





  if (deprecated_inside_entry_file (frame_pc_unwind (fi)))
      return 0;

  return 1;
}
