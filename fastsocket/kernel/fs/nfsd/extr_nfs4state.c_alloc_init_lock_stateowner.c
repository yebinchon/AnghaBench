
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd4_lock {scalar_t__ lk_new_lock_seqid; int lk_new_owner; } ;
struct nfs4_replay {int rp_ibuf; int rp_buf; scalar_t__ rp_buflen; int rp_status; } ;
struct nfs4_stateowner {int so_confirmed; struct nfs4_replay so_replay; scalar_t__ so_seqid; struct nfs4_client* so_client; scalar_t__ so_id; scalar_t__ so_is_open_owner; int so_perstateid; int so_strhash; int so_idhash; scalar_t__ so_time; int so_close_lru; int so_stateids; int so_perclient; } ;
struct nfs4_stateid {int st_lockowners; } ;
struct nfs4_client {int dummy; } ;


 int INIT_LIST_HEAD (int *) ;
 struct nfs4_stateowner* alloc_stateowner (int *) ;
 int current_ownerid ;
 int list_add (int *,int *) ;
 int * lock_ownerid_hashtbl ;
 int * lock_ownerstr_hashtbl ;
 unsigned int lockownerid_hashval (int ) ;
 int nfserr_serverfault ;

__attribute__((used)) static struct nfs4_stateowner *
alloc_init_lock_stateowner(unsigned int strhashval, struct nfs4_client *clp, struct nfs4_stateid *open_stp, struct nfsd4_lock *lock) {
 struct nfs4_stateowner *sop;
 struct nfs4_replay *rp;
 unsigned int idhashval;

 if (!(sop = alloc_stateowner(&lock->lk_new_owner)))
  return ((void*)0);
 idhashval = lockownerid_hashval(current_ownerid);
 INIT_LIST_HEAD(&sop->so_idhash);
 INIT_LIST_HEAD(&sop->so_strhash);
 INIT_LIST_HEAD(&sop->so_perclient);
 INIT_LIST_HEAD(&sop->so_stateids);
 INIT_LIST_HEAD(&sop->so_perstateid);
 INIT_LIST_HEAD(&sop->so_close_lru);
 sop->so_time = 0;
 list_add(&sop->so_idhash, &lock_ownerid_hashtbl[idhashval]);
 list_add(&sop->so_strhash, &lock_ownerstr_hashtbl[strhashval]);
 list_add(&sop->so_perstateid, &open_stp->st_lockowners);
 sop->so_is_open_owner = 0;
 sop->so_id = current_ownerid++;
 sop->so_client = clp;


 sop->so_seqid = lock->lk_new_lock_seqid + 1;
 sop->so_confirmed = 1;
 rp = &sop->so_replay;
 rp->rp_status = nfserr_serverfault;
 rp->rp_buflen = 0;
 rp->rp_buf = rp->rp_ibuf;
 return sop;
}
