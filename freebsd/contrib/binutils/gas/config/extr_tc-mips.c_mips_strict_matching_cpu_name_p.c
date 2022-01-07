
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bfd_boolean ;


 scalar_t__ TOLOWER (char const) ;
 scalar_t__ strcasecmp (char const*,char*) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static bfd_boolean
mips_strict_matching_cpu_name_p (const char *canonical, const char *given)
{
  while (*given != 0 && TOLOWER (*given) == TOLOWER (*canonical))
    given++, canonical++;

  return ((*given == 0 && *canonical == 0)
   || (strcmp (canonical, "000") == 0 && strcasecmp (given, "k") == 0));
}
