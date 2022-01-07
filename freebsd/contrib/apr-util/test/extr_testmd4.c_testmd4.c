
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int abts_suite ;


 int * ADD_SUITE (int *) ;
 int abts_run_test (int *,int ,int *) ;
 scalar_t__ count ;
 scalar_t__ num_sums ;
 int test_md4sum ;

abts_suite *testmd4(abts_suite *suite)
{
        suite = ADD_SUITE(suite);

        for (count=0; count < num_sums; count++) {
            abts_run_test(suite, test_md4sum, ((void*)0));
        }

        return suite;
}
