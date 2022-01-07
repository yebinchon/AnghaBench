
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int abts_suite ;


 int * ADD_SUITE (int *) ;
 int abts_run_test (int *,int ,int *) ;
 int test_date_parse_http ;
 int test_date_rfc ;

abts_suite *testdate(abts_suite *suite)
{
    suite = ADD_SUITE(suite);

    abts_run_test(suite, test_date_parse_http, ((void*)0));
    abts_run_test(suite, test_date_rfc, ((void*)0));

    return suite;
}
