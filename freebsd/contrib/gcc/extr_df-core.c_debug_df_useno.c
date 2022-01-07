
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DF_USES_GET (int ,unsigned int) ;
 int ddf ;
 int df_ref_debug (int ,int ) ;
 int stderr ;

void
debug_df_useno (unsigned int defno)
{
  df_ref_debug (DF_USES_GET (ddf, defno), stderr);
}
