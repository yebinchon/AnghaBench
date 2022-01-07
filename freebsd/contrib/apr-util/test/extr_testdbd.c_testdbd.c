
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int abts_suite ;


 int * ADD_SUITE (int *) ;
 int abts_run_test (int *,int ,int *) ;
 int test_dbd_init ;
 int test_dbd_sqlite2 ;
 int test_dbd_sqlite3 ;

abts_suite *testdbd(abts_suite *suite)
{
    suite = ADD_SUITE(suite);


    abts_run_test(suite, test_dbd_init, ((void*)0));
    return suite;
}
