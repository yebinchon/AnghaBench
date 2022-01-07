
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tomoyo_domain_info {int dummy; } ;
struct TYPE_2__ {struct tomoyo_domain_info* security; } ;


 TYPE_1__* current_cred () ;

__attribute__((used)) static inline struct tomoyo_domain_info *tomoyo_domain(void)
{
 return current_cred()->security;
}
