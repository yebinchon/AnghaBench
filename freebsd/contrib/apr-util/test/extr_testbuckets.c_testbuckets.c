
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int abts_suite ;


 int * ADD_SUITE (int *) ;
 int abts_run_test (int *,int ,int *) ;
 int test_bwrite ;
 int test_create ;
 int test_flatten ;
 int test_insertfile ;
 int test_manyfile ;
 int test_partition ;
 int test_simple ;
 int test_split ;
 int test_splitline ;
 int test_splits ;
 int test_truncfile ;
 int test_write_putstrs ;
 int test_write_split ;

abts_suite *testbuckets(abts_suite *suite)
{
    suite = ADD_SUITE(suite);

    abts_run_test(suite, test_create, ((void*)0));
    abts_run_test(suite, test_simple, ((void*)0));
    abts_run_test(suite, test_flatten, ((void*)0));
    abts_run_test(suite, test_split, ((void*)0));
    abts_run_test(suite, test_bwrite, ((void*)0));
    abts_run_test(suite, test_splitline, ((void*)0));
    abts_run_test(suite, test_splits, ((void*)0));
    abts_run_test(suite, test_insertfile, ((void*)0));
    abts_run_test(suite, test_manyfile, ((void*)0));
    abts_run_test(suite, test_truncfile, ((void*)0));
    abts_run_test(suite, test_partition, ((void*)0));
    abts_run_test(suite, test_write_split, ((void*)0));
    abts_run_test(suite, test_write_putstrs, ((void*)0));

    return suite;
}
