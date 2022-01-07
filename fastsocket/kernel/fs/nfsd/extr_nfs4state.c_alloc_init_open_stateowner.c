
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd4_open {int op_seqid; int op_owner; } ;
struct nfs4_replay {int rp_ibuf; int rp_buf; scalar_t__ rp_buflen; int rp_status; } ;
struct nfs4_stateowner {int so_is_open_owner; struct nfs4_replay so_replay; scalar_t__ so_confirmed; int so_seqid; struct nfs4_client* so_client; scalar_t__ so_id; int so_perclient; int so_strhash; int so_idhash; scalar_t__ so_time; int so_close_lru; int so_perstateid; int so_stateids; } ;
struct nfs4_client {int cl_openowners; } ;


 int INIT_LIST_HEAD (int *) ;
 struct nfs4_stateowner* alloc_stateowner (int *) ;
 int current_ownerid ;
 int list_add (int *,int *) ;
 int nfserr_serverfault ;
 int * ownerid_hashtbl ;
 unsigned int ownerid_hashval (int ) ;
 int * ownerstr_hashtbl ;

__attribute__((used)) static struct nfs4_stateowner *
alloc_init_open_stateowner(unsigned int strhashval, struct nfs4_client *clp, struct nfsd4_open *open) {
 struct nfs4_stateowner *sop;
 struct nfs4_replay *rp;
 unsigned int idhashval;

 if (!(sop = alloc_stateowner(&open->op_owner)))
  return ((void*)0);
 idhashval = ownerid_hashval(current_ownerid);
 INIT_LIST_HEAD(&sop->so_idhash);
 INIT_LIST_HEAD(&sop->so_strhash);
 INIT_LIST_HEAD(&sop->so_perclient);
 INIT_LIST_HEAD(&sop->so_stateids);
 INIT_LIST_HEAD(&sop->so_perstateid);
 INIT_LIST_HEAD(&sop->so_close_lru);
 sop->so_time = 0;
 list_add(&sop->so_idhash, &ownerid_hashtbl[idhashval]);
 list_add(&sop->so_strhash, &ownerstr_hashtbl[strhashval]);
 list_add(&sop->so_perclient, &clp->cl_openowners);
 sop->so_is_open_owner = 1;
 sop->so_id = current_ownerid++;
 sop->so_client = clp;
 sop->so_seqid = open->op_seqid;
 sop->so_confirmed = 0;
 rp = &sop->so_replay;
 rp->rp_status = nfserr_serverfault;
 rp->rp_buflen = 0;
 rp->rp_buf = rp->rp_ibuf;
 return sop;
}
