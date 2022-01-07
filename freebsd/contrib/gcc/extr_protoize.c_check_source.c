
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int declare_source_confusing (char const*) ;

__attribute__((used)) static void
check_source (int cond, const char *clean_p)
{
  if (!cond)
    declare_source_confusing (clean_p);
}
