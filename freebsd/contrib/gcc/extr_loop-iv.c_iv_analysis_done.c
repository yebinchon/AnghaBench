
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * bivs ;
 int clear_iv_info () ;
 int * df ;
 int df_finish (int *) ;
 int htab_delete (int *) ;

void
iv_analysis_done (void)
{
  if (df)
    {
      clear_iv_info ();
      df_finish (df);
      df = ((void*)0);
      htab_delete (bivs);
      bivs = ((void*)0);
    }
}
