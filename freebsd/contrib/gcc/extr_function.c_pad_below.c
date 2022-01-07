
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
struct args_size {int constant; } ;
typedef enum machine_mode { ____Placeholder_machine_mode } machine_mode ;


 int ADD_PARM_SIZE (struct args_size,int ) ;
 int BITS_PER_UNIT ;
 int BLKmode ;
 int GET_MODE_BITSIZE (int) ;
 int GET_MODE_SIZE (int) ;
 scalar_t__ INTEGER_CST ;
 int PARM_BOUNDARY ;
 int SUB_PARM_SIZE (struct args_size,int ) ;
 scalar_t__ TREE_CODE (int ) ;
 int TREE_INT_CST_LOW (int ) ;
 int round_up (int ,int) ;

__attribute__((used)) static void
pad_below (struct args_size *offset_ptr, enum machine_mode passed_mode, tree sizetree)
{
  if (passed_mode != BLKmode)
    {
      if (GET_MODE_BITSIZE (passed_mode) % PARM_BOUNDARY)
 offset_ptr->constant
   += (((GET_MODE_BITSIZE (passed_mode) + PARM_BOUNDARY - 1)
        / PARM_BOUNDARY * PARM_BOUNDARY / BITS_PER_UNIT)
       - GET_MODE_SIZE (passed_mode));
    }
  else
    {
      if (TREE_CODE (sizetree) != INTEGER_CST
   || (TREE_INT_CST_LOW (sizetree) * BITS_PER_UNIT) % PARM_BOUNDARY)
 {

   tree s2 = round_up (sizetree, PARM_BOUNDARY / BITS_PER_UNIT);

   ADD_PARM_SIZE (*offset_ptr, s2);
   SUB_PARM_SIZE (*offset_ptr, sizetree);
 }
    }
}
