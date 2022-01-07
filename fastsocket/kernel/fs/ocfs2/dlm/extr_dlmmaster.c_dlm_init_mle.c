
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dlm_master_list_entry {int type; unsigned int mnamelen; int node_map; int vote_map; int mnamehash; int mname; struct dlm_lock_resource* mleres; scalar_t__ inuse; void* new_master; void* master; int response_map; int mle_refs; int woken; int wq; int spinlock; int maybe_map; int hb_events; int master_hash_node; struct dlm_ctxt* dlm; } ;
struct TYPE_2__ {char const* name; int len; int hash; } ;
struct dlm_lock_resource {TYPE_1__ lockname; } ;
struct dlm_ctxt {char const* domain_map; int node_num; int * mle_cur_count; int * mle_tot_count; int spinlock; } ;
typedef enum dlm_mle_type { ____Placeholder_dlm_mle_type } dlm_mle_type ;


 int BUG_ON (int) ;
 int DLM_MLE_BLOCK ;
 int DLM_MLE_MASTER ;
 int DLM_MLE_MIGRATION ;
 int INIT_HLIST_NODE (int *) ;
 int INIT_LIST_HEAD (int *) ;
 void* O2NM_MAX_NODES ;
 int __dlm_mle_attach_hb_events (struct dlm_ctxt*,struct dlm_master_list_entry*) ;
 int assert_spin_locked (int *) ;
 int atomic_inc (int *) ;
 int atomic_set (int *,int ) ;
 int clear_bit (int ,int ) ;
 int dlm_lockid_hash (char const*,unsigned int) ;
 int init_waitqueue_head (int *) ;
 int kref_init (int *) ;
 int memcpy (int ,char const*,int) ;
 int memset (int ,int ,int) ;
 int spin_lock_init (int *) ;

__attribute__((used)) static void dlm_init_mle(struct dlm_master_list_entry *mle,
   enum dlm_mle_type type,
   struct dlm_ctxt *dlm,
   struct dlm_lock_resource *res,
   const char *name,
   unsigned int namelen)
{
 assert_spin_locked(&dlm->spinlock);

 mle->dlm = dlm;
 mle->type = type;
 INIT_HLIST_NODE(&mle->master_hash_node);
 INIT_LIST_HEAD(&mle->hb_events);
 memset(mle->maybe_map, 0, sizeof(mle->maybe_map));
 spin_lock_init(&mle->spinlock);
 init_waitqueue_head(&mle->wq);
 atomic_set(&mle->woken, 0);
 kref_init(&mle->mle_refs);
 memset(mle->response_map, 0, sizeof(mle->response_map));
 mle->master = O2NM_MAX_NODES;
 mle->new_master = O2NM_MAX_NODES;
 mle->inuse = 0;

 BUG_ON(mle->type != DLM_MLE_BLOCK &&
        mle->type != DLM_MLE_MASTER &&
        mle->type != DLM_MLE_MIGRATION);

 if (mle->type == DLM_MLE_MASTER) {
  BUG_ON(!res);
  mle->mleres = res;
  memcpy(mle->mname, res->lockname.name, res->lockname.len);
  mle->mnamelen = res->lockname.len;
  mle->mnamehash = res->lockname.hash;
 } else {
  BUG_ON(!name);
  mle->mleres = ((void*)0);
  memcpy(mle->mname, name, namelen);
  mle->mnamelen = namelen;
  mle->mnamehash = dlm_lockid_hash(name, namelen);
 }

 atomic_inc(&dlm->mle_tot_count[mle->type]);
 atomic_inc(&dlm->mle_cur_count[mle->type]);


 memcpy(mle->node_map, dlm->domain_map, sizeof(mle->node_map));
 memcpy(mle->vote_map, dlm->domain_map, sizeof(mle->vote_map));
 clear_bit(dlm->node_num, mle->vote_map);
 clear_bit(dlm->node_num, mle->node_map);


 __dlm_mle_attach_hb_events(dlm, mle);
}
