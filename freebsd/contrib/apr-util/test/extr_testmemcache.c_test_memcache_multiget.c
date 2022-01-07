
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ apr_uint32_t ;
typedef scalar_t__ apr_status_t ;
typedef int apr_pool_t ;
typedef int apr_memcache_t ;
typedef int apr_memcache_server_t ;
typedef int apr_hash_t ;
typedef int apr_hash_index_t ;
typedef int abts_case ;


 int ABTS_ASSERT (int *,char*,int) ;
 scalar_t__ APR_SUCCESS ;
 int HOST ;
 int PORT ;
 scalar_t__ TDATA_SET ;
 scalar_t__ apr_hash_count (int *) ;
 int * apr_hash_first (int *,int *) ;
 int * apr_hash_make (int *) ;
 int * apr_hash_next (int *) ;
 int apr_hash_this (int *,void const**,int *,void**) ;
 int apr_itoa (int *,scalar_t__) ;
 int apr_memcache_add_multget_key (int *,int ,int **) ;
 scalar_t__ apr_memcache_add_server (int *,int *) ;
 scalar_t__ apr_memcache_create (int *,int,int ,int **) ;
 scalar_t__ apr_memcache_delete (int *,char const*,int ) ;
 scalar_t__ apr_memcache_multgetp (int *,int *,int *,int *) ;
 scalar_t__ apr_memcache_server_create (int *,int ,int ,int ,int,int,int,int **) ;
 scalar_t__ apr_memcache_set (int *,char const*,void*,int ,int ,int) ;
 scalar_t__ apr_pool_create (int **,int *) ;
 int apr_pstrcat (int *,int ,int ,int *) ;
 int create_test_hash (int *,int *) ;
 int * p ;
 int prefix ;
 int strlen (void*) ;

__attribute__((used)) static void test_memcache_multiget(abts_case * tc, void *data)
{
  apr_pool_t *pool = p;
  apr_pool_t *tmppool;
  apr_status_t rv;
  apr_memcache_t *memcache;
  apr_memcache_server_t *server;
  apr_hash_t *tdata, *values;
  apr_hash_index_t *hi;
  apr_uint32_t i;

  rv = apr_memcache_create(pool, 1, 0, &memcache);
  ABTS_ASSERT(tc, "memcache create failed", rv == APR_SUCCESS);

  rv = apr_memcache_server_create(pool, HOST, PORT, 0, 1, 1, 60, &server);
  ABTS_ASSERT(tc, "server create failed", rv == APR_SUCCESS);

  rv = apr_memcache_add_server(memcache, server);
  ABTS_ASSERT(tc, "server add failed", rv == APR_SUCCESS);

  values = apr_hash_make(p);
  tdata = apr_hash_make(p);

  create_test_hash(pool, tdata);

  for (hi = apr_hash_first(p, tdata); hi; hi = apr_hash_next(hi)) {
    const void *k;
    void *v;
    const char *key;

    apr_hash_this(hi, &k, ((void*)0), &v);
    key = k;

    rv = apr_memcache_set(memcache, key, v, strlen(v), 0, 27);
    ABTS_ASSERT(tc, "set failed", rv == APR_SUCCESS);
  }

  rv = apr_pool_create(&tmppool, pool);
  for (i = 0; i < TDATA_SET; i++)
    apr_memcache_add_multget_key(pool,
                                 apr_pstrcat(pool, prefix,
                                             apr_itoa(pool, i), ((void*)0)),
                                 &values);

  rv = apr_memcache_multgetp(memcache,
                             tmppool,
                             pool,
                             values);

  ABTS_ASSERT(tc, "multgetp failed", rv == APR_SUCCESS);
  ABTS_ASSERT(tc, "multgetp returned too few results",
              apr_hash_count(values) == TDATA_SET);

  for (hi = apr_hash_first(p, tdata); hi; hi = apr_hash_next(hi)) {
    const void *k;
    const char *key;

    apr_hash_this(hi, &k, ((void*)0), ((void*)0));
    key = k;

    rv = apr_memcache_delete(memcache, key, 0);
    ABTS_ASSERT(tc, "delete failed", rv == APR_SUCCESS);
  }

}
