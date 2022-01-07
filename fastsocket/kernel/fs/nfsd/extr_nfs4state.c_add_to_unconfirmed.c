
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cl_id; } ;
struct nfs4_client {int cl_idhash; TYPE_1__ cl_clientid; int cl_strhash; } ;


 unsigned int clientid_hashval (int ) ;
 int list_add (int *,int *) ;
 int renew_client (struct nfs4_client*) ;
 int * unconf_id_hashtbl ;
 int * unconf_str_hashtbl ;

__attribute__((used)) static void
add_to_unconfirmed(struct nfs4_client *clp, unsigned int strhashval)
{
 unsigned int idhashval;

 list_add(&clp->cl_strhash, &unconf_str_hashtbl[strhashval]);
 idhashval = clientid_hashval(clp->cl_clientid.cl_id);
 list_add(&clp->cl_idhash, &unconf_id_hashtbl[idhashval]);
 renew_client(clp);
}
