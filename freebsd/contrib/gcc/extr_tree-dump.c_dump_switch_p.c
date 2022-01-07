
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t TDI_end ;
 int TDI_none ;
 int * dump_files ;
 int dump_switch_p_1 (char const*,int *,int) ;
 int * extra_dump_files ;
 size_t extra_dump_files_in_use ;

int
dump_switch_p (const char *arg)
{
  size_t i;
  int any = 0;

  for (i = TDI_none + 1; i != TDI_end; i++)
    any |= dump_switch_p_1 (arg, &dump_files[i], 0);


  if (!any)
    for (i = TDI_none + 1; i != TDI_end; i++)
      any |= dump_switch_p_1 (arg, &dump_files[i], 1);

  for (i = 0; i < extra_dump_files_in_use; i++)
    any |= dump_switch_p_1 (arg, &extra_dump_files[i], 0);

  if (!any)
    for (i = 0; i < extra_dump_files_in_use; i++)
      any |= dump_switch_p_1 (arg, &extra_dump_files[i], 1);


  return any;
}
