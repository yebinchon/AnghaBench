
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int abts_suite ;


 int * ADD_SUITE (int *) ;
 int abts_run_test (int *,int ,int *) ;
 int test_bcryptpass ;
 int test_crypt ;
 int test_glibc_shapass ;
 int test_md5pass ;
 int test_shapass ;
 int test_threadsafe ;

abts_suite *testpass(abts_suite *suite)
{
    suite = ADD_SUITE(suite);







    abts_run_test(suite, test_shapass, ((void*)0));
    abts_run_test(suite, test_md5pass, ((void*)0));
    abts_run_test(suite, test_bcryptpass, ((void*)0));




    return suite;
}
