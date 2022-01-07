
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int save_string (char const*,int) ;
 int std_prefix ;

void
set_std_prefix (const char *prefix, int len)
{
  std_prefix = save_string (prefix, len);
}
