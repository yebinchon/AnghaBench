
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_ldap_err_t ;
typedef int abts_suite ;


 int * ADD_SUITE (int *) ;
 int abts_run_test (int *,int ,int *) ;
 int apr_ldap_ssl_init (int ,int *,int ,int **) ;
 scalar_t__ get_ldap_host () ;
 int p ;
 int test_ldap ;
 int test_ldap_tls ;
 int test_ldaps ;

abts_suite *testldap(abts_suite *suite)
{
    return suite;
}
