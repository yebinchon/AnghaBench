#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int which_server; } ;
typedef  TYPE_1__ my_hash_server_baton ;
typedef  int apr_uint32_t ;
typedef  scalar_t__ apr_status_t ;
typedef  int /*<<< orphan*/  apr_pool_t ;
struct TYPE_13__ {TYPE_1__* server_baton; int /*<<< orphan*/  server_func; int /*<<< orphan*/  hash_func; } ;
typedef  TYPE_2__ apr_memcache_t ;
struct TYPE_14__ {int port; } ;
typedef  TYPE_3__ apr_memcache_server_t ;
typedef  int /*<<< orphan*/  abts_case ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ APR_SUCCESS ; 
 int /*<<< orphan*/  HASH_FUNC_RESULT ; 
 int /*<<< orphan*/  HOST ; 
 scalar_t__ FUNC2 (TYPE_2__*,TYPE_3__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,TYPE_2__**) ; 
 TYPE_3__* FUNC4 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_2__*,char*,int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int,int,TYPE_3__**) ; 
 TYPE_1__* FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  my_hash_func ; 
 int /*<<< orphan*/  my_server_func ; 
 int /*<<< orphan*/ * p ; 

__attribute__((used)) static void FUNC8(abts_case * tc, void *data)
{
  apr_pool_t *pool = p;
  apr_status_t rv;
  apr_memcache_t *memcache;
  apr_memcache_server_t *found;
  apr_uint32_t max_servers = 10;
  apr_uint32_t hres;
  apr_uint32_t i;
  my_hash_server_baton *baton = 
    FUNC7(pool, sizeof(my_hash_server_baton));

  rv = FUNC3(pool, max_servers, 0, &memcache);
  FUNC0(tc, "memcache create failed", rv == APR_SUCCESS);

  /* as noted above, install our custom hash function, and call 
   * apr_memcache_hash. the return value should be our predefined number,
   * and our function just ignores the other args, for simplicity.
   */
  memcache->hash_func = my_hash_func;

  hres = FUNC5(memcache, "whatever", sizeof("whatever") - 1);
  FUNC1(tc, HASH_FUNC_RESULT, hres);
  
  /* add some servers */
  for(i = 1; i <= 10; i++) {
    apr_memcache_server_t *ms;

    rv = FUNC6(pool, HOST, i, 0, 1, 1, 60, &ms);
    FUNC0(tc, "server create failed", rv == APR_SUCCESS);
    
    rv = FUNC2(memcache, ms);
    FUNC0(tc, "server add failed", rv == APR_SUCCESS);
  }

  /* 
   * set 'which_server' in our server_baton to find the third server 
   * which should have the same port.
   */
  baton->which_server = 3;
  memcache->server_func = my_server_func; 
  memcache->server_baton = baton;
  found = FUNC4(memcache, 0);
  FUNC0(tc, "wrong server found", found->port == baton->which_server);
}