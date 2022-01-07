
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ logical_input_line ;
 int physical_input_line ;
 scalar_t__ sb_index ;

void
bump_line_counters (void)
{
  if (sb_index < 0)
    {
      ++physical_input_line;
      if (logical_input_line >= 0)
 ++logical_input_line;
    }
}
