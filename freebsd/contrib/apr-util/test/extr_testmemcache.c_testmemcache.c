
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ apr_status_t ;
typedef int abts_suite ;


 int * ADD_SUITE (int *) ;
 scalar_t__ APR_SUCCESS ;
 int HOST ;
 int PORT ;
 int abts_log_message (char*,scalar_t__,int ,int ) ;
 int abts_run_test (int *,int ,int *) ;
 scalar_t__ check_mc () ;
 int test_memcache_addreplace ;
 int test_memcache_create ;
 int test_memcache_incrdecr ;
 int test_memcache_meta ;
 int test_memcache_multiget ;
 int test_memcache_setget ;
 int test_memcache_user_funcs ;

abts_suite *testmemcache(abts_suite * suite)
{
    apr_status_t rv;
    suite = ADD_SUITE(suite);



    rv = check_mc();
    if (rv == APR_SUCCESS) {
      abts_run_test(suite, test_memcache_create, ((void*)0));
      abts_run_test(suite, test_memcache_user_funcs, ((void*)0));
      abts_run_test(suite, test_memcache_meta, ((void*)0));
      abts_run_test(suite, test_memcache_setget, ((void*)0));
      abts_run_test(suite, test_memcache_multiget, ((void*)0));
      abts_run_test(suite, test_memcache_addreplace, ((void*)0));
      abts_run_test(suite, test_memcache_incrdecr, ((void*)0));
    }
    else {
        abts_log_message("Error %d occurred attempting to reach memcached "
                         "on %s:%d.  Skipping apr_memcache tests...",
                         rv, HOST, PORT);
    }

    return suite;
}
