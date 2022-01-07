
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rtx ;


 int REGNO (int ) ;
 int ddf ;
 int df_regno_debug (int ,int ,int ) ;
 int stderr ;

void
debug_df_reg (rtx reg)
{
  df_regno_debug (ddf, REGNO (reg), stderr);
}
