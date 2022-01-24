#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ apr_status_t ;
typedef  int /*<<< orphan*/  abts_suite ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ APR_SUCCESS ; 
 int /*<<< orphan*/  HOST ; 
 int /*<<< orphan*/  PORT ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  test_memcache_addreplace ; 
 int /*<<< orphan*/  test_memcache_create ; 
 int /*<<< orphan*/  test_memcache_incrdecr ; 
 int /*<<< orphan*/  test_memcache_meta ; 
 int /*<<< orphan*/  test_memcache_multiget ; 
 int /*<<< orphan*/  test_memcache_setget ; 
 int /*<<< orphan*/  test_memcache_user_funcs ; 

abts_suite *FUNC4(abts_suite * suite)
{
    apr_status_t rv;
    suite = FUNC0(suite);
    /* check for a running memcached on the typical port before 
     * trying to run the tests. succeed if we don't find one.
     */
    rv = FUNC3();
    if (rv == APR_SUCCESS) {
      FUNC2(suite, test_memcache_create, NULL);
      FUNC2(suite, test_memcache_user_funcs, NULL);
      FUNC2(suite, test_memcache_meta, NULL);
      FUNC2(suite, test_memcache_setget, NULL);
      FUNC2(suite, test_memcache_multiget, NULL);
      FUNC2(suite, test_memcache_addreplace, NULL);
      FUNC2(suite, test_memcache_incrdecr, NULL);
    }
    else {
        FUNC1("Error %d occurred attempting to reach memcached "
                         "on %s:%d.  Skipping apr_memcache tests...",
                         rv, HOST, PORT);
    }

    return suite;
}