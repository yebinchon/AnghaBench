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
typedef  scalar_t__ apr_port_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
typedef  int /*<<< orphan*/  apr_memcache_t ;
typedef  int /*<<< orphan*/  apr_memcache_server_t ;
typedef  int /*<<< orphan*/  abts_case ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ APR_SUCCESS ; 
 int /*<<< orphan*/  HOST ; 
 scalar_t__ PORT ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * p ; 
 int /*<<< orphan*/  prefix ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC12(abts_case * tc, void *data)
{
  apr_pool_t *pool = p;
  apr_status_t rv;
  apr_memcache_t *memcache;
  apr_memcache_server_t *server, *s;
  apr_uint32_t max_servers = 10;
  apr_uint32_t i;
  apr_uint32_t hash;

  rv = FUNC4(pool, max_servers, 0, &memcache);
  FUNC0(tc, "memcache create failed", rv == APR_SUCCESS);
  
  for (i = 1; i <= max_servers; i++) {
    apr_port_t port;
    
    port = PORT + i;
    rv =
      FUNC10(pool, HOST, PORT + i, 0, 1, 1, 60, &server);
    FUNC0(tc, "server create failed", rv == APR_SUCCESS);
    
    rv = FUNC3(memcache, server);
    FUNC0(tc, "server add failed", rv == APR_SUCCESS);
    
    s = FUNC7(memcache, HOST, port);
    FUNC1(tc, server, s);
    
    rv = FUNC5(memcache, s);
    FUNC0(tc, "server disable failed", rv == APR_SUCCESS);
    
    rv = FUNC6(memcache, s);
    FUNC0(tc, "server enable failed", rv == APR_SUCCESS);
    
    hash = FUNC9(memcache, prefix, FUNC11(prefix));
    FUNC0(tc, "hash failed", hash > 0);
    
    s = FUNC8(memcache, hash);
    FUNC2(tc, s);
  }

  rv = FUNC10(pool, HOST, PORT, 0, 1, 1, 60, &server);
  FUNC0(tc, "server create failed", rv == APR_SUCCESS);
  
  rv = FUNC3(memcache, server);
  FUNC0(tc, "server add should have failed", rv != APR_SUCCESS);
  
}