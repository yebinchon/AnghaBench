
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd4_exchange_id {int flags; } ;
struct nfs4_client {int cl_exchange_flags; } ;


 int EXCHGID4_FLAG_SUPP_MOVED_REFER ;
 int EXCHGID4_FLAG_USE_NON_PNFS ;

__attribute__((used)) static void
nfsd4_set_ex_flags(struct nfs4_client *new, struct nfsd4_exchange_id *clid)
{

 new->cl_exchange_flags |= EXCHGID4_FLAG_USE_NON_PNFS;


 new->cl_exchange_flags |= EXCHGID4_FLAG_SUPP_MOVED_REFER;


 clid->flags = new->cl_exchange_flags;
}
