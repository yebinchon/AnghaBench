
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * ldap; int credentials; int hostent; } ;
typedef TYPE_1__ ALD ;


 int XFREE (TYPE_1__*) ;
 int amu_ldap_unbind (int *) ;
 int cr_free (int ) ;
 int he_free (int ) ;

__attribute__((used)) static void
ald_free(ALD *a)
{
  he_free(a->hostent);
  cr_free(a->credentials);
  if (a->ldap != ((void*)0))
    amu_ldap_unbind(a->ldap);
  XFREE(a);
}
