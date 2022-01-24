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
typedef  int /*<<< orphan*/  apr_size_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_memcache_t ;
typedef  int /*<<< orphan*/  apr_memcache_server_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_hash_index_t ;
typedef  int /*<<< orphan*/  abts_case ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char*,int) ; 
 scalar_t__ APR_SUCCESS ; 
 int /*<<< orphan*/  HOST ; 
 int /*<<< orphan*/  PORT ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,void const**,int /*<<< orphan*/ *,void**) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,char const*,void*,scalar_t__,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,char**,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,char const*,char*,int,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * p ; 
 scalar_t__ FUNC14 (void*) ; 

__attribute__((used)) static void FUNC15(abts_case * tc, void *data)
{
 apr_pool_t *pool = p;
 apr_status_t rv;
 apr_memcache_t *memcache;
 apr_memcache_server_t *server;
 apr_hash_t *tdata;
 apr_hash_index_t *hi;
 char *result;
 apr_size_t len;

  rv = FUNC8(pool, 1, 0, &memcache);
  FUNC0(tc, "memcache create failed", rv == APR_SUCCESS);
  
  rv = FUNC12(pool, HOST, PORT, 0, 1, 1, 60, &server);
  FUNC0(tc, "server create failed", rv == APR_SUCCESS);
  
  rv = FUNC7(memcache, server);
  FUNC0(tc, "server add failed", rv == APR_SUCCESS);
  
  tdata = FUNC3(p);
  FUNC13(pool, tdata);

  for (hi = FUNC2(p, tdata); hi; hi = FUNC4(hi)) {
    const void *k;
    void *v;
    const char *key;

    FUNC5(hi, &k, NULL, &v);
    key = k;

    /* doesn't exist yet, fail */
    rv = FUNC11(memcache, key, v, FUNC14(v) - 1, 0, 27);
    FUNC0(tc, "replace should have failed", rv != APR_SUCCESS);
    
    /* doesn't exist yet, succeed */
    rv = FUNC6(memcache, key, v, FUNC14(v), 0, 27);
    FUNC0(tc, "add failed", rv == APR_SUCCESS);

    /* exists now, succeed */
    rv = FUNC11(memcache, key, "new", sizeof("new") - 1, 0, 27);
    FUNC0(tc, "replace failed", rv == APR_SUCCESS);

    /* make sure its different */
    rv = FUNC10(memcache, pool, key, &result, &len, NULL);
    FUNC0(tc, "get failed", rv == APR_SUCCESS);
    FUNC1(tc, result, "new", 3);

    /* exists now, fail */
    rv = FUNC6(memcache, key, v, FUNC14(v), 0, 27);
    FUNC0(tc, "add should have failed", rv != APR_SUCCESS);

    /* clean up */
    rv = FUNC9(memcache, key, 0);
    FUNC0(tc, "delete failed", rv == APR_SUCCESS);
  }
}