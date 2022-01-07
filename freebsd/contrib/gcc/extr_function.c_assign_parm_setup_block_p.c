
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct assign_parm_data_one {scalar_t__ nominal_mode; int passed_type; int passed_mode; int promoted_mode; int entry_parm; } ;


 scalar_t__ BLKmode ;
 scalar_t__ BLOCK_REG_PADDING (int ,int ,int) ;
 scalar_t__ BYTES_BIG_ENDIAN ;
 scalar_t__ GET_CODE (int ) ;
 scalar_t__ GET_MODE_SIZE (int ) ;
 scalar_t__ PARALLEL ;
 scalar_t__ REG_P (int ) ;
 scalar_t__ UNITS_PER_WORD ;
 scalar_t__ downward ;
 scalar_t__ upward ;

__attribute__((used)) static bool
assign_parm_setup_block_p (struct assign_parm_data_one *data)
{
  if (data->nominal_mode == BLKmode)
    return 1;
  if (GET_CODE (data->entry_parm) == PARALLEL)
    return 1;
  return 0;
}
