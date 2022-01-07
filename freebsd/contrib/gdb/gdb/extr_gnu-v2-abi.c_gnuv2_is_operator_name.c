
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strncmp (char const*,char*,int) ;

__attribute__((used)) static int
gnuv2_is_operator_name (const char *name)
{
  return strncmp (name, "operator", 8) == 0;
}
