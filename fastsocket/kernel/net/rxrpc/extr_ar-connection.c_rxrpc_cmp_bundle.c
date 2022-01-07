
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rxrpc_conn_bundle {scalar_t__ key; scalar_t__ service_id; } ;
struct key {int dummy; } ;
typedef scalar_t__ __be16 ;



__attribute__((used)) static inline
int rxrpc_cmp_bundle(const struct rxrpc_conn_bundle *bundle,
       struct key *key, __be16 service_id)
{
 return (bundle->service_id - service_id) ?:
  ((unsigned long) bundle->key - (unsigned long) key);
}
