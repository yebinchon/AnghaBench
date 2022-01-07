
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct auth_domain {int dummy; } ;


 struct auth_domain* auth_domain_lookup (char*,int *) ;

struct auth_domain *auth_domain_find(char *name)
{
 return auth_domain_lookup(name, ((void*)0));
}
