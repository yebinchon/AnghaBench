
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfs4_client_reclaim {int cr_recdir; int cr_strhash; } ;


 int HEXDIR_LEN ;
 int INIT_LIST_HEAD (int *) ;
 struct nfs4_client_reclaim* alloc_reclaim () ;
 unsigned int clientstr_hashval (char const*) ;
 int dprintk (char*,int ,char const*) ;
 int list_add (int *,int *) ;
 int memcpy (int ,char const*,int ) ;
 int * reclaim_str_hashtbl ;
 int reclaim_str_hashtbl_size ;

int
nfs4_client_to_reclaim(const char *name)
{
 unsigned int strhashval;
 struct nfs4_client_reclaim *crp = ((void*)0);

 dprintk("NFSD nfs4_client_to_reclaim NAME: %.*s\n", HEXDIR_LEN, name);
 crp = alloc_reclaim();
 if (!crp)
  return 0;
 strhashval = clientstr_hashval(name);
 INIT_LIST_HEAD(&crp->cr_strhash);
 list_add(&crp->cr_strhash, &reclaim_str_hashtbl[strhashval]);
 memcpy(crp->cr_recdir, name, HEXDIR_LEN);
 reclaim_str_hashtbl_size++;
 return 1;
}
