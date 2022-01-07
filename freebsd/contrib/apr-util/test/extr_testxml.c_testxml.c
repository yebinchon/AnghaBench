
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int abts_suite ;


 int * ADD_SUITE (int *) ;
 int abts_run_test (int *,int ,int *) ;
 int test_CVE_2009_3720_alpha ;
 int test_CVE_2009_3720_beta ;
 int test_billion_laughs ;
 int test_xml_parser ;

abts_suite *testxml(abts_suite *suite)
{
    suite = ADD_SUITE(suite);

    abts_run_test(suite, test_xml_parser, ((void*)0));
    abts_run_test(suite, test_billion_laughs, ((void*)0));
    abts_run_test(suite, test_CVE_2009_3720_alpha, ((void*)0));
    abts_run_test(suite, test_CVE_2009_3720_beta, ((void*)0));

    return suite;
}
