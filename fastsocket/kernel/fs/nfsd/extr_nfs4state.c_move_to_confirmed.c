
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cl_id; } ;
struct nfs4_client {int cl_strhash; int cl_recdir; int cl_idhash; TYPE_1__ cl_clientid; } ;


 unsigned int clientid_hashval (int ) ;
 unsigned int clientstr_hashval (int ) ;
 int * conf_id_hashtbl ;
 int * conf_str_hashtbl ;
 int dprintk (char*,struct nfs4_client*) ;
 int list_move (int *,int *) ;
 int renew_client (struct nfs4_client*) ;

__attribute__((used)) static void
move_to_confirmed(struct nfs4_client *clp)
{
 unsigned int idhashval = clientid_hashval(clp->cl_clientid.cl_id);
 unsigned int strhashval;

 dprintk("NFSD: move_to_confirm nfs4_client %p\n", clp);
 list_move(&clp->cl_idhash, &conf_id_hashtbl[idhashval]);
 strhashval = clientstr_hashval(clp->cl_recdir);
 list_move(&clp->cl_strhash, &conf_str_hashtbl[strhashval]);
 renew_client(clp);
}
