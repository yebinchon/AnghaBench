
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int abts_suite ;


 int * ADD_SUITE (int *) ;

abts_suite *testcrypto(abts_suite *suite)
{
    return ADD_SUITE(suite);
}
