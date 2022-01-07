
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rpc_cred {TYPE_1__* cr_ops; int cr_lru; int cr_expire; int cr_flags; int cr_count; } ;
struct TYPE_2__ {int (* crdestroy ) (struct rpc_cred*) ;} ;


 int RPCAUTH_CRED_HASHED ;
 int RPCAUTH_CRED_UPTODATE ;
 int atomic_dec_and_lock (int *,int *) ;
 scalar_t__ atomic_dec_and_test (int *) ;
 int cred_unused ;
 int jiffies ;
 int list_add_tail (int *,int *) ;
 int list_del_init (int *) ;
 int list_empty (int *) ;
 int number_cred_unused ;
 int rpc_credcache_lock ;
 int rpcauth_unhash_cred (struct rpc_cred*) ;
 int spin_unlock (int *) ;
 int stub1 (struct rpc_cred*) ;
 int stub2 (struct rpc_cred*) ;
 scalar_t__ test_bit (int ,int *) ;

void
put_rpccred(struct rpc_cred *cred)
{

 if (test_bit(RPCAUTH_CRED_HASHED, &cred->cr_flags) == 0) {
  if (atomic_dec_and_test(&cred->cr_count))
   cred->cr_ops->crdestroy(cred);
  return;
 }

 if (!atomic_dec_and_lock(&cred->cr_count, &rpc_credcache_lock))
  return;
 if (!list_empty(&cred->cr_lru)) {
  number_cred_unused--;
  list_del_init(&cred->cr_lru);
 }
 if (test_bit(RPCAUTH_CRED_HASHED, &cred->cr_flags) != 0) {
  if (test_bit(RPCAUTH_CRED_UPTODATE, &cred->cr_flags) != 0) {
   cred->cr_expire = jiffies;
   list_add_tail(&cred->cr_lru, &cred_unused);
   number_cred_unused++;
   goto out_nodestroy;
  }
  if (!rpcauth_unhash_cred(cred)) {

   goto out_nodestroy;
  }
 }
 spin_unlock(&rpc_credcache_lock);
 cred->cr_ops->crdestroy(cred);
 return;
out_nodestroy:
 spin_unlock(&rpc_credcache_lock);
}
