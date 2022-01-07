
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rpc_cred {int cr_flags; int cr_hash; } ;


 int RPCAUTH_CRED_HASHED ;
 int clear_bit (int ,int *) ;
 int hlist_del_rcu (int *) ;
 int smp_mb__before_clear_bit () ;

__attribute__((used)) static void
rpcauth_unhash_cred_locked(struct rpc_cred *cred)
{
 hlist_del_rcu(&cred->cr_hash);
 smp_mb__before_clear_bit();
 clear_bit(RPCAUTH_CRED_HASHED, &cred->cr_flags);
}
