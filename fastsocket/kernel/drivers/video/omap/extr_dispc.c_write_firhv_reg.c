
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;


 scalar_t__ DISPC_VID1_BASE ;
 scalar_t__ DISPC_VID2_BASE ;
 scalar_t__ DISPC_VID_FIR_COEF_HV0 ;
 int dispc_write_reg (scalar_t__,scalar_t__) ;

__attribute__((used)) static void write_firhv_reg(int plane, int reg, u32 value)
{
 u32 base;

 if (plane == 1)
  base = DISPC_VID1_BASE + DISPC_VID_FIR_COEF_HV0;
 else
  base = DISPC_VID2_BASE + DISPC_VID_FIR_COEF_HV0;
 dispc_write_reg(base + reg * 8, value);
}
