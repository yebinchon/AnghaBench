
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXCLUDE_WILDCARDS ;
 int FNM_CASEFOLD ;
 scalar_t__ ignore_file_name_case ;

__attribute__((used)) static int
exclude_options (void)
{
  return EXCLUDE_WILDCARDS | (ignore_file_name_case ? FNM_CASEFOLD : 0);
}
