
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ce_if_block {scalar_t__ num_multiple_test_blocks; } ;


 int FALSE ;
 scalar_t__ HAVE_conditional_execution ;
 scalar_t__ HAVE_conditional_move ;
 int TRUE ;
 int cancel_changes (int ) ;
 scalar_t__ cond_exec_process_if_block (struct ce_if_block*,int) ;
 scalar_t__ cond_move_process_if_block (struct ce_if_block*) ;
 scalar_t__ noce_process_if_block (struct ce_if_block*) ;
 scalar_t__ reload_completed ;

__attribute__((used)) static int
process_if_block (struct ce_if_block * ce_info)
{
  if (! reload_completed
      && noce_process_if_block (ce_info))
    return TRUE;

  if (HAVE_conditional_move
      && cond_move_process_if_block (ce_info))
    return TRUE;

  if (HAVE_conditional_execution && reload_completed)
    {




      if (cond_exec_process_if_block (ce_info, TRUE))
 return TRUE;

      if (ce_info->num_multiple_test_blocks)
 {
   cancel_changes (0);

   if (cond_exec_process_if_block (ce_info, FALSE))
     return TRUE;
 }
    }

  return FALSE;
}
