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
typedef  int apr_uint32_t ;
typedef  scalar_t__ apr_status_t ;
typedef  int /*<<< orphan*/  apr_size_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_memcache_t ;
typedef  int /*<<< orphan*/  apr_memcache_server_t ;
typedef  int /*<<< orphan*/  abts_case ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 scalar_t__ APR_SUCCESS ; 
 int /*<<< orphan*/  HOST ; 
 int /*<<< orphan*/  PORT ; 
 int TDATA_SIZE ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char**,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ,int) ; 
 int FUNC10 (char*) ; 
 int /*<<< orphan*/ * p ; 
 int /*<<< orphan*/  prefix ; 

__attribute__((used)) static void FUNC11(abts_case * tc, void *data)
{
 apr_pool_t *pool = p;
 apr_status_t rv;
 apr_memcache_t *memcache;
 apr_memcache_server_t *server;
 apr_uint32_t new;
 char *result;
 apr_size_t len;
 apr_uint32_t i;

  rv = FUNC3(pool, 1, 0, &memcache);
  FUNC0(tc, "memcache create failed", rv == APR_SUCCESS);
  
  rv = FUNC8(pool, HOST, PORT, 0, 1, 1, 60, &server);
  FUNC0(tc, "server create failed", rv == APR_SUCCESS);
  
  rv = FUNC2(memcache, server);
  FUNC0(tc, "server add failed", rv == APR_SUCCESS);

  rv = FUNC9(memcache, prefix, "271", sizeof("271") - 1, 0, 27);
  FUNC0(tc, "set failed", rv == APR_SUCCESS);
  
  for( i = 1; i <= TDATA_SIZE; i++) {
    apr_uint32_t expect;

    rv = FUNC6(memcache, pool, prefix, &result, &len, NULL);
    FUNC0(tc, "get failed", rv == APR_SUCCESS);

    expect = i + FUNC10(result);

    rv = FUNC7(memcache, prefix, i, &new);
    FUNC0(tc, "incr failed", rv == APR_SUCCESS);

    FUNC1(tc, expect, new);

    rv = FUNC4(memcache, prefix, i, &new);
    FUNC0(tc, "decr failed", rv == APR_SUCCESS);
    FUNC1(tc, FUNC10(result), new);

  }

  rv = FUNC6(memcache, pool, prefix, &result, &len, NULL);
  FUNC0(tc, "get failed", rv == APR_SUCCESS);

  FUNC1(tc, 271, FUNC10(result));

  rv = FUNC5(memcache, prefix, 0);
  FUNC0(tc, "delete failed", rv == APR_SUCCESS);
}