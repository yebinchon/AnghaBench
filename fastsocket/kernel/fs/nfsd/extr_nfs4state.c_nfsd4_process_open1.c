
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int cl_id; } ;
struct nfsd4_open {int op_seqid; struct nfs4_stateowner* op_stateowner; int op_owner; TYPE_2__ op_clientid; } ;
struct nfsd4_compound_state {int dummy; } ;
struct TYPE_5__ {scalar_t__ rp_buflen; } ;
struct nfs4_stateowner {int so_seqid; struct nfs4_client* so_client; int so_close_lru; TYPE_1__ so_replay; int so_confirmed; } ;
struct nfs4_client {int dummy; } ;
typedef TYPE_2__ clientid_t ;
typedef int __be32 ;


 scalar_t__ STALE_CLIENTID (TYPE_2__*) ;
 struct nfs4_stateowner* alloc_init_open_stateowner (unsigned int,struct nfs4_client*,struct nfsd4_open*) ;
 int check_name (int ) ;
 int dprintk (char*) ;
 struct nfs4_client* find_confirmed_client (TYPE_2__*) ;
 struct nfs4_stateowner* find_openstateowner_str (unsigned int,struct nfsd4_open*) ;
 int list_del_init (int *) ;
 int nfs_ok ;
 scalar_t__ nfsd4_has_session (struct nfsd4_compound_state*) ;
 int nfserr_bad_seqid ;
 int nfserr_expired ;
 int nfserr_inval ;
 int nfserr_replay_me ;
 int nfserr_resource ;
 int nfserr_stale_clientid ;
 unsigned int ownerstr_hashval (int ,int ) ;
 int release_openowner (struct nfs4_stateowner*) ;
 int renew_client (struct nfs4_client*) ;

__be32
nfsd4_process_open1(struct nfsd4_compound_state *cstate,
      struct nfsd4_open *open)
{
 clientid_t *clientid = &open->op_clientid;
 struct nfs4_client *clp = ((void*)0);
 unsigned int strhashval;
 struct nfs4_stateowner *sop = ((void*)0);

 if (!check_name(open->op_owner))
  return nfserr_inval;

 if (STALE_CLIENTID(&open->op_clientid))
  return nfserr_stale_clientid;

 strhashval = ownerstr_hashval(clientid->cl_id, open->op_owner);
 sop = find_openstateowner_str(strhashval, open);
 open->op_stateowner = sop;
 if (!sop) {

  clp = find_confirmed_client(clientid);
  if (clp == ((void*)0))
   return nfserr_expired;
  goto renew;
 }

 if (nfsd4_has_session(cstate))
  goto renew;
 if (!sop->so_confirmed) {

  clp = sop->so_client;
  release_openowner(sop);
  open->op_stateowner = ((void*)0);
  goto renew;
 }
 if (open->op_seqid == sop->so_seqid - 1) {
  if (sop->so_replay.rp_buflen)
   return nfserr_replay_me;






  dprintk("nfsd4_process_open1: replay with no replay cache\n");
  goto renew;
 }
 if (open->op_seqid != sop->so_seqid)
  return nfserr_bad_seqid;
renew:
 if (open->op_stateowner == ((void*)0)) {
  sop = alloc_init_open_stateowner(strhashval, clp, open);
  if (sop == ((void*)0))
   return nfserr_resource;
  open->op_stateowner = sop;
 }
 list_del_init(&sop->so_close_lru);
 renew_client(sop->so_client);
 return nfs_ok;
}
