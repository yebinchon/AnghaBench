
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int offsetT ;


 int as_internal_value_out_of_range (char*,int ,int ,int ,char*,unsigned int,int ) ;

void
as_warn_value_out_of_range (char * prefix,
      offsetT value,
      offsetT min,
      offsetT max,
      char * file,
      unsigned line)
{
  as_internal_value_out_of_range (prefix, value, min, max, file, line, 0);
}
