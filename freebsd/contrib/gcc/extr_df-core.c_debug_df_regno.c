
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ddf ;
 int df_regno_debug (int ,unsigned int,int ) ;
 int stderr ;

void
debug_df_regno (unsigned int regno)
{
  df_regno_debug (ddf, regno, stderr);
}
