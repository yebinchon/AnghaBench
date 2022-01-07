
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs4_client {scalar_t__ cl_exchange_flags; } ;



__attribute__((used)) static inline int
match_clientid_establishment(struct nfs4_client *clp, bool use_exchange_id)
{
 bool has_exchange_flags = (clp->cl_exchange_flags != 0);
 return use_exchange_id == has_exchange_flags;
}
