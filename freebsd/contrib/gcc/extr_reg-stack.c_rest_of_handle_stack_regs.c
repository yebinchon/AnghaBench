
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CLEANUP_CROSSJUMP ;
 int CLEANUP_EXPENSIVE ;
 int CLEANUP_POST_REGSTACK ;
 scalar_t__ cleanup_cfg (int) ;
 scalar_t__ flag_crossjumping ;
 scalar_t__ flag_reorder_blocks ;
 scalar_t__ flag_reorder_blocks_and_partition ;
 scalar_t__ optimize ;
 scalar_t__ reg_to_stack () ;
 int regstack_completed ;
 int reorder_basic_blocks (int ) ;

__attribute__((used)) static unsigned int
rest_of_handle_stack_regs (void)
{
  return 0;
}
