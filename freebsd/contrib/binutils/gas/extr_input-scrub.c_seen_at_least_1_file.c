
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * physical_input_file ;

int
seen_at_least_1_file (void)
{
  return (physical_input_file != ((void*)0));
}
