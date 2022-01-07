
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ bfd_boolean ;


 scalar_t__ FALSE ;
 int ISDIGIT (char const) ;
 char TOLOWER (char const) ;
 scalar_t__ TRUE ;
 scalar_t__ mips_strict_matching_cpu_name_p (char const*,char const*) ;

__attribute__((used)) static bfd_boolean
mips_matching_cpu_name_p (const char *canonical, const char *given)
{


  if (mips_strict_matching_cpu_name_p (canonical, given))
    return TRUE;



  if (TOLOWER (*given) == 'r')
    given++;
  if (!ISDIGIT (*given))
    return FALSE;



  if (TOLOWER (canonical[0]) == 'v' && TOLOWER (canonical[1]) == 'r')
    canonical += 2;
  else if (TOLOWER (canonical[0]) == 'r' && TOLOWER (canonical[1]) == 'm')
    canonical += 2;
  else if (TOLOWER (canonical[0]) == 'r')
    canonical += 1;

  return mips_strict_matching_cpu_name_p (canonical, given);
}
