
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int abts_suite ;


 int * ADD_SUITE (int *) ;
 int abts_run_test (int *,int ,int *) ;
 int test_gen2 ;
 int test_uuid_parse ;

abts_suite *testuuid(abts_suite *suite)
{
    suite = ADD_SUITE(suite);

    abts_run_test(suite, test_uuid_parse, ((void*)0));
    abts_run_test(suite, test_gen2, ((void*)0));

    return suite;
}
