
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct noce_if_info {void* jump; void* cond; void* test_bb; int cond_earliest; } ;
struct ce_if_block {scalar_t__ num_or_or_blocks; scalar_t__ num_and_and_blocks; scalar_t__ num_multiple_test_blocks; void* last_test_bb; void* test_bb; int and_and_p; scalar_t__ else_bb; } ;
typedef void* rtx ;
typedef void* basic_block ;


 void* BB_END (void*) ;
 scalar_t__ BLKmode ;
 int FALSE ;
 scalar_t__ GET_MODE (int ) ;
 int TRUE ;
 int XEXP (void*,int ) ;
 void* noce_get_condition (void*,int *) ;
 int onlyjump_p (void*) ;

__attribute__((used)) static int
noce_init_if_info (struct ce_if_block *ce_info, struct noce_if_info *if_info)
{
  basic_block test_bb = ce_info->test_bb;
  rtx cond, jump;



  if (ce_info->num_multiple_test_blocks)
    {
      if (ce_info->else_bb || !ce_info->and_and_p)
 return FALSE;

      ce_info->test_bb = test_bb = ce_info->last_test_bb;
      ce_info->num_multiple_test_blocks = 0;
      ce_info->num_and_and_blocks = 0;
      ce_info->num_or_or_blocks = 0;
    }


  jump = BB_END (test_bb);
  cond = noce_get_condition (jump, &if_info->cond_earliest);
  if (!cond)
    return FALSE;



  if (! onlyjump_p (jump))
    return FALSE;


  if (GET_MODE (XEXP (cond, 0)) == BLKmode)
    return FALSE;

  if_info->test_bb = test_bb;
  if_info->cond = cond;
  if_info->jump = jump;

  return TRUE;
}
