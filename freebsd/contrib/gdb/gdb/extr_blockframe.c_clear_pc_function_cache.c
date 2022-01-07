
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ cache_pc_function_high ;
 scalar_t__ cache_pc_function_low ;
 char* cache_pc_function_name ;
 int * cache_pc_function_section ;

void
clear_pc_function_cache (void)
{
  cache_pc_function_low = 0;
  cache_pc_function_high = 0;
  cache_pc_function_name = (char *) 0;
  cache_pc_function_section = ((void*)0);
}
