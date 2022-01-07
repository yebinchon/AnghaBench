
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ apr_status_t ;
typedef int apr_size_t ;
typedef int apr_pool_t ;
typedef int apr_memcache_t ;
typedef int apr_memcache_server_t ;
typedef int apr_hash_t ;
typedef int apr_hash_index_t ;
typedef int abts_case ;


 int ABTS_ASSERT (int *,char*,int) ;
 int ABTS_STR_NEQUAL (int *,char*,char*,int) ;
 scalar_t__ APR_SUCCESS ;
 int HOST ;
 int PORT ;
 int * apr_hash_first (int *,int *) ;
 int * apr_hash_make (int *) ;
 int * apr_hash_next (int *) ;
 int apr_hash_this (int *,void const**,int *,void**) ;
 scalar_t__ apr_memcache_add (int *,char const*,void*,scalar_t__,int ,int) ;
 scalar_t__ apr_memcache_add_server (int *,int *) ;
 scalar_t__ apr_memcache_create (int *,int,int ,int **) ;
 scalar_t__ apr_memcache_delete (int *,char const*,int ) ;
 scalar_t__ apr_memcache_getp (int *,int *,char const*,char**,int *,int *) ;
 scalar_t__ apr_memcache_replace (int *,char const*,char*,int,int ,int) ;
 scalar_t__ apr_memcache_server_create (int *,int ,int ,int ,int,int,int,int **) ;
 int create_test_hash (int *,int *) ;
 int * p ;
 scalar_t__ strlen (void*) ;

__attribute__((used)) static void test_memcache_addreplace(abts_case * tc, void *data)
{
 apr_pool_t *pool = p;
 apr_status_t rv;
 apr_memcache_t *memcache;
 apr_memcache_server_t *server;
 apr_hash_t *tdata;
 apr_hash_index_t *hi;
 char *result;
 apr_size_t len;

  rv = apr_memcache_create(pool, 1, 0, &memcache);
  ABTS_ASSERT(tc, "memcache create failed", rv == APR_SUCCESS);

  rv = apr_memcache_server_create(pool, HOST, PORT, 0, 1, 1, 60, &server);
  ABTS_ASSERT(tc, "server create failed", rv == APR_SUCCESS);

  rv = apr_memcache_add_server(memcache, server);
  ABTS_ASSERT(tc, "server add failed", rv == APR_SUCCESS);

  tdata = apr_hash_make(p);
  create_test_hash(pool, tdata);

  for (hi = apr_hash_first(p, tdata); hi; hi = apr_hash_next(hi)) {
    const void *k;
    void *v;
    const char *key;

    apr_hash_this(hi, &k, ((void*)0), &v);
    key = k;


    rv = apr_memcache_replace(memcache, key, v, strlen(v) - 1, 0, 27);
    ABTS_ASSERT(tc, "replace should have failed", rv != APR_SUCCESS);


    rv = apr_memcache_add(memcache, key, v, strlen(v), 0, 27);
    ABTS_ASSERT(tc, "add failed", rv == APR_SUCCESS);


    rv = apr_memcache_replace(memcache, key, "new", sizeof("new") - 1, 0, 27);
    ABTS_ASSERT(tc, "replace failed", rv == APR_SUCCESS);


    rv = apr_memcache_getp(memcache, pool, key, &result, &len, ((void*)0));
    ABTS_ASSERT(tc, "get failed", rv == APR_SUCCESS);
    ABTS_STR_NEQUAL(tc, result, "new", 3);


    rv = apr_memcache_add(memcache, key, v, strlen(v), 0, 27);
    ABTS_ASSERT(tc, "add should have failed", rv != APR_SUCCESS);


    rv = apr_memcache_delete(memcache, key, 0);
    ABTS_ASSERT(tc, "delete failed", rv == APR_SUCCESS);
  }
}
