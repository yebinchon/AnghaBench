
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tomoyo_domain_info {int dummy; } ;


 int TOMOYO_VERBOSE ;
 scalar_t__ tomoyo_check_flags (struct tomoyo_domain_info const*,int ) ;

bool tomoyo_verbose_mode(const struct tomoyo_domain_info *domain)
{
 return tomoyo_check_flags(domain, TOMOYO_VERBOSE) != 0;
}
