
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct rpc_cred {int cr_count; TYPE_2__* cr_auth; } ;
typedef int spinlock_t ;
struct TYPE_4__ {TYPE_1__* au_credcache; } ;
struct TYPE_3__ {int lock; } ;


 scalar_t__ atomic_read (int *) ;
 int rpcauth_unhash_cred_locked (struct rpc_cred*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int
rpcauth_unhash_cred(struct rpc_cred *cred)
{
 spinlock_t *cache_lock;
 int ret;

 cache_lock = &cred->cr_auth->au_credcache->lock;
 spin_lock(cache_lock);
 ret = atomic_read(&cred->cr_count) == 0;
 if (ret)
  rpcauth_unhash_cred_locked(cred);
 spin_unlock(cache_lock);
 return ret;
}
