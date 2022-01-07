
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int abts_suite ;


 int * ADD_SUITE (int *) ;
 int abts_run_test (int *,int ,int *) ;
 int test_reslist ;

abts_suite *testreslist(abts_suite *suite)
{
    suite = ADD_SUITE(suite);





    return suite;
}
