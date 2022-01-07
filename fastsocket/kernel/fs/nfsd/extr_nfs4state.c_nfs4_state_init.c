
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stateid_t ;


 int CLIENT_HASH_SIZE ;
 int FILE_HASH_SIZE ;
 int INIT_LIST_HEAD (int *) ;
 int LOCK_HASH_SIZE ;
 int OWNER_HASH_SIZE ;
 int SESSION_HASH_SIZE ;
 int STATEID_HASH_SIZE ;
 int client_lru ;
 int close_lru ;
 int * conf_id_hashtbl ;
 int * conf_str_hashtbl ;
 int del_recall_lru ;
 int * file_hashtbl ;
 int * lock_ownerid_hashtbl ;
 int * lock_ownerstr_hashtbl ;
 int * lockstateid_hashtbl ;
 int memset (int *,int ,int) ;
 int nfsd4_init_slabs () ;
 int onestateid ;
 int * ownerid_hashtbl ;
 int * ownerstr_hashtbl ;
 int * reclaim_str_hashtbl ;
 scalar_t__ reclaim_str_hashtbl_size ;
 int * sessionid_hashtbl ;
 int * stateid_hashtbl ;
 int * unconf_id_hashtbl ;
 int * unconf_str_hashtbl ;

int
nfs4_state_init(void)
{
 int i, status;

 status = nfsd4_init_slabs();
 if (status)
  return status;
 for (i = 0; i < CLIENT_HASH_SIZE; i++) {
  INIT_LIST_HEAD(&conf_id_hashtbl[i]);
  INIT_LIST_HEAD(&conf_str_hashtbl[i]);
  INIT_LIST_HEAD(&unconf_str_hashtbl[i]);
  INIT_LIST_HEAD(&unconf_id_hashtbl[i]);
  INIT_LIST_HEAD(&reclaim_str_hashtbl[i]);
 }
 for (i = 0; i < SESSION_HASH_SIZE; i++)
  INIT_LIST_HEAD(&sessionid_hashtbl[i]);
 for (i = 0; i < FILE_HASH_SIZE; i++) {
  INIT_LIST_HEAD(&file_hashtbl[i]);
 }
 for (i = 0; i < OWNER_HASH_SIZE; i++) {
  INIT_LIST_HEAD(&ownerstr_hashtbl[i]);
  INIT_LIST_HEAD(&ownerid_hashtbl[i]);
 }
 for (i = 0; i < STATEID_HASH_SIZE; i++) {
  INIT_LIST_HEAD(&stateid_hashtbl[i]);
  INIT_LIST_HEAD(&lockstateid_hashtbl[i]);
 }
 for (i = 0; i < LOCK_HASH_SIZE; i++) {
  INIT_LIST_HEAD(&lock_ownerid_hashtbl[i]);
  INIT_LIST_HEAD(&lock_ownerstr_hashtbl[i]);
 }
 memset(&onestateid, ~0, sizeof(stateid_t));
 INIT_LIST_HEAD(&close_lru);
 INIT_LIST_HEAD(&client_lru);
 INIT_LIST_HEAD(&del_recall_lru);
 reclaim_str_hashtbl_size = 0;
 return 0;
}
