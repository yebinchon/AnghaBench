
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct df_ref {int dummy; } ;


 int df_ref_debug (struct df_ref*,int ) ;
 int stderr ;

void
debug_df_ref (struct df_ref *ref)
{
  df_ref_debug (ref, stderr);
}
