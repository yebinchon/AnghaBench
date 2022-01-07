
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tomoyo_domain_info {TYPE_1__* domainname; } ;
struct TYPE_2__ {char* name; } ;


 char* strrchr (char const*,char) ;

const char *tomoyo_get_last_name(const struct tomoyo_domain_info *domain)
{
 const char *cp0 = domain->domainname->name;
 const char *cp1 = strrchr(cp0, ' ');

 if (cp1)
  return cp1 + 1;
 return cp0;
}
