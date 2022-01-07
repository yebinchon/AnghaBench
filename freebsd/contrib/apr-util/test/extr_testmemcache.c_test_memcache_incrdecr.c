
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int apr_uint32_t ;
typedef scalar_t__ apr_status_t ;
typedef int apr_size_t ;
typedef int apr_pool_t ;
typedef int apr_memcache_t ;
typedef int apr_memcache_server_t ;
typedef int abts_case ;


 int ABTS_ASSERT (int *,char*,int) ;
 int ABTS_INT_EQUAL (int *,int,int) ;
 scalar_t__ APR_SUCCESS ;
 int HOST ;
 int PORT ;
 int TDATA_SIZE ;
 scalar_t__ apr_memcache_add_server (int *,int *) ;
 scalar_t__ apr_memcache_create (int *,int,int ,int **) ;
 scalar_t__ apr_memcache_decr (int *,int ,int,int*) ;
 scalar_t__ apr_memcache_delete (int *,int ,int ) ;
 scalar_t__ apr_memcache_getp (int *,int *,int ,char**,int *,int *) ;
 scalar_t__ apr_memcache_incr (int *,int ,int,int*) ;
 scalar_t__ apr_memcache_server_create (int *,int ,int ,int ,int,int,int,int **) ;
 scalar_t__ apr_memcache_set (int *,int ,char*,int,int ,int) ;
 int atoi (char*) ;
 int * p ;
 int prefix ;

__attribute__((used)) static void test_memcache_incrdecr(abts_case * tc, void *data)
{
 apr_pool_t *pool = p;
 apr_status_t rv;
 apr_memcache_t *memcache;
 apr_memcache_server_t *server;
 apr_uint32_t new;
 char *result;
 apr_size_t len;
 apr_uint32_t i;

  rv = apr_memcache_create(pool, 1, 0, &memcache);
  ABTS_ASSERT(tc, "memcache create failed", rv == APR_SUCCESS);

  rv = apr_memcache_server_create(pool, HOST, PORT, 0, 1, 1, 60, &server);
  ABTS_ASSERT(tc, "server create failed", rv == APR_SUCCESS);

  rv = apr_memcache_add_server(memcache, server);
  ABTS_ASSERT(tc, "server add failed", rv == APR_SUCCESS);

  rv = apr_memcache_set(memcache, prefix, "271", sizeof("271") - 1, 0, 27);
  ABTS_ASSERT(tc, "set failed", rv == APR_SUCCESS);

  for( i = 1; i <= TDATA_SIZE; i++) {
    apr_uint32_t expect;

    rv = apr_memcache_getp(memcache, pool, prefix, &result, &len, ((void*)0));
    ABTS_ASSERT(tc, "get failed", rv == APR_SUCCESS);

    expect = i + atoi(result);

    rv = apr_memcache_incr(memcache, prefix, i, &new);
    ABTS_ASSERT(tc, "incr failed", rv == APR_SUCCESS);

    ABTS_INT_EQUAL(tc, expect, new);

    rv = apr_memcache_decr(memcache, prefix, i, &new);
    ABTS_ASSERT(tc, "decr failed", rv == APR_SUCCESS);
    ABTS_INT_EQUAL(tc, atoi(result), new);

  }

  rv = apr_memcache_getp(memcache, pool, prefix, &result, &len, ((void*)0));
  ABTS_ASSERT(tc, "get failed", rv == APR_SUCCESS);

  ABTS_INT_EQUAL(tc, 271, atoi(result));

  rv = apr_memcache_delete(memcache, prefix, 0);
  ABTS_ASSERT(tc, "delete failed", rv == APR_SUCCESS);
}
