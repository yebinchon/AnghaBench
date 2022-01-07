
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs4_client {int dummy; } ;


 int client_lock ;
 int renew_client_locked (struct nfs4_client*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static inline void
renew_client(struct nfs4_client *clp)
{
 spin_lock(&client_lock);
 renew_client_locked(clp);
 spin_unlock(&client_lock);
}
