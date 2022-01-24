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
typedef  scalar_t__ apr_uint32_t ;
typedef  scalar_t__ apr_status_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_memcache_t ;
typedef  int /*<<< orphan*/  apr_memcache_server_t ;
typedef  int /*<<< orphan*/  apr_hash_t ;
typedef  int /*<<< orphan*/  apr_hash_index_t ;
typedef  int /*<<< orphan*/  abts_case ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ APR_SUCCESS ; 
 int /*<<< orphan*/  HOST ; 
 int /*<<< orphan*/  PORT ; 
 scalar_t__ TDATA_SET ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,void const**,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,char const*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * p ; 
 int /*<<< orphan*/  prefix ; 
 int /*<<< orphan*/  FUNC17 (void*) ; 

__attribute__((used)) static void FUNC18(abts_case * tc, void *data)
{
  apr_pool_t *pool = p;
  apr_pool_t *tmppool;
  apr_status_t rv;
  apr_memcache_t *memcache;
  apr_memcache_server_t *server;
  apr_hash_t *tdata, *values;
  apr_hash_index_t *hi;
  apr_uint32_t i;

  rv = FUNC9(pool, 1, 0, &memcache);
  FUNC0(tc, "memcache create failed", rv == APR_SUCCESS);
  
  rv = FUNC12(pool, HOST, PORT, 0, 1, 1, 60, &server);
  FUNC0(tc, "server create failed", rv == APR_SUCCESS);
  
  rv = FUNC8(memcache, server);
  FUNC0(tc, "server add failed", rv == APR_SUCCESS);
  
  values = FUNC3(p);
  tdata = FUNC3(p);
  
  FUNC16(pool, tdata);

  for (hi = FUNC2(p, tdata); hi; hi = FUNC4(hi)) {
    const void *k;
    void *v;
    const char *key;

    FUNC5(hi, &k, NULL, &v);
    key = k;

    rv = FUNC13(memcache, key, v, FUNC17(v), 0, 27);
    FUNC0(tc, "set failed", rv == APR_SUCCESS);
  }
  
  rv = FUNC14(&tmppool, pool);
  for (i = 0; i < TDATA_SET; i++)
    FUNC7(pool,
                                 FUNC15(pool, prefix,
                                             FUNC6(pool, i), NULL),
                                 &values);
    
  rv = FUNC11(memcache,
                             tmppool,
                             pool,
                             values);
  
  FUNC0(tc, "multgetp failed", rv == APR_SUCCESS);
  FUNC0(tc, "multgetp returned too few results",
              FUNC1(values) == TDATA_SET);
  
  for (hi = FUNC2(p, tdata); hi; hi = FUNC4(hi)) {
    const void *k;
    const char *key;
    
    FUNC5(hi, &k, NULL, NULL);
    key = k;

    rv = FUNC10(memcache, key, 0);
    FUNC0(tc, "delete failed", rv == APR_SUCCESS);
  }
  
}