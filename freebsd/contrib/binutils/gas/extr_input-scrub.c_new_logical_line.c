
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int new_logical_line_flags (char*,int,int ) ;

int
new_logical_line (char *fname, int line_number)
{
  return new_logical_line_flags (fname, line_number, 0);
}
