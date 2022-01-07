
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct df {scalar_t__* problems_by_index; } ;
typedef int bitmap ;
typedef int basic_block ;


 int DF_LIVE_IN (struct df*,int ) ;
 size_t DF_LR ;
 int DF_RA_LIVE_IN (struct df*,int ) ;
 int DF_UPWARD_LIVE_IN (struct df*,int ) ;
 size_t DF_UR ;
 size_t DF_UREC ;
 int gcc_assert (scalar_t__) ;

bitmap
df_get_live_in (struct df *df, basic_block bb)
{
  gcc_assert (df->problems_by_index[DF_LR]);

  if (df->problems_by_index[DF_UREC])
    return DF_RA_LIVE_IN (df, bb);
  else if (df->problems_by_index[DF_UR])
    return DF_LIVE_IN (df, bb);
  else
    return DF_UPWARD_LIVE_IN (df, bb);
}
