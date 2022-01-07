
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int abts_suite ;


 int * ADD_SUITE (int *) ;
 int abts_run_test (int *,int ,int *) ;
 int test_aup ;
 int test_uph ;

abts_suite *testuri(abts_suite *suite)
{
    suite = ADD_SUITE(suite);

    abts_run_test(suite, test_aup, ((void*)0));
    abts_run_test(suite, test_uph, ((void*)0));

    return suite;
}
