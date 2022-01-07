
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ which_server; } ;
typedef TYPE_1__ my_hash_server_baton ;
typedef int apr_uint32_t ;
struct TYPE_5__ {scalar_t__ ntotal; int ** live_servers; } ;
typedef TYPE_2__ apr_memcache_t ;
typedef int apr_memcache_server_t ;



__attribute__((used)) static apr_memcache_server_t *my_server_func(void *baton,
                                             apr_memcache_t *mc,
                                             const apr_uint32_t hash)
{
  apr_memcache_server_t *ms = ((void*)0);
  my_hash_server_baton *mhsb = (my_hash_server_baton *)baton;

  if(mc->ntotal == 0) {
    return ((void*)0);
  }

  if(mc->ntotal < mhsb->which_server) {
    return ((void*)0);
  }

  ms = mc->live_servers[mhsb->which_server - 1];

  return ms;
}
