
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u8 ;
struct tomoyo_domain_info {size_t profile; } ;
struct TYPE_2__ {unsigned int* value; } ;


 size_t const TOMOYO_MAX_CONTROL_INDEX ;
 size_t const TOMOYO_MAX_PROFILES ;
 scalar_t__ WARN_ON (int ) ;
 int in_interrupt () ;
 scalar_t__ tomoyo_policy_loaded ;
 TYPE_1__** tomoyo_profile_ptr ;

unsigned int tomoyo_check_flags(const struct tomoyo_domain_info *domain,
    const u8 index)
{
 const u8 profile = domain->profile;

 if (WARN_ON(in_interrupt()))
  return 0;
 return tomoyo_policy_loaded && index < TOMOYO_MAX_CONTROL_INDEX

  && profile < TOMOYO_MAX_PROFILES

  && tomoyo_profile_ptr[profile] ?
  tomoyo_profile_ptr[profile]->value[index] : 0;
}
