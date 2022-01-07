
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct t10_alua_tg_pt_gp {int tg_pt_gp_alua_access_type; int tg_pt_gp_valid_id; int tg_pt_gp_list; scalar_t__ tg_pt_gp_id; int tg_pt_gp_implict_trans_secs; int tg_pt_gp_trans_delay_msecs; int tg_pt_gp_nonop_delay_msecs; int tg_pt_gp_alua_access_state; int tg_pt_gp_md_buf_len; struct se_device* tg_pt_gp_dev; int tg_pt_gp_ref_cnt; int tg_pt_gp_lock; int tg_pt_gp_md_mutex; int tg_pt_gp_mem_list; } ;
struct TYPE_2__ {int tg_pt_gps_lock; int tg_pt_gps_list; int alua_tg_pt_gps_count; int alua_tg_pt_gps_counter; } ;
struct se_device {TYPE_1__ t10_alua; } ;


 int ALUA_ACCESS_STATE_ACTIVE_OPTMIZED ;
 int ALUA_DEFAULT_IMPLICT_TRANS_SECS ;
 int ALUA_DEFAULT_NONOP_DELAY_MSECS ;
 int ALUA_DEFAULT_TRANS_DELAY_MSECS ;
 int ALUA_MD_BUF_LEN ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int TPGS_EXPLICT_ALUA ;
 int TPGS_IMPLICT_ALUA ;
 int atomic_set (int *,int ) ;
 struct t10_alua_tg_pt_gp* kmem_cache_zalloc (int ,int ) ;
 int list_add_tail (int *,int *) ;
 int mutex_init (int *) ;
 int pr_err (char*) ;
 int spin_lock (int *) ;
 int spin_lock_init (int *) ;
 int spin_unlock (int *) ;
 int t10_alua_tg_pt_gp_cache ;

struct t10_alua_tg_pt_gp *core_alua_allocate_tg_pt_gp(struct se_device *dev,
  const char *name, int def_group)
{
 struct t10_alua_tg_pt_gp *tg_pt_gp;

 tg_pt_gp = kmem_cache_zalloc(t10_alua_tg_pt_gp_cache, GFP_KERNEL);
 if (!tg_pt_gp) {
  pr_err("Unable to allocate struct t10_alua_tg_pt_gp\n");
  return ((void*)0);
 }
 INIT_LIST_HEAD(&tg_pt_gp->tg_pt_gp_list);
 INIT_LIST_HEAD(&tg_pt_gp->tg_pt_gp_mem_list);
 mutex_init(&tg_pt_gp->tg_pt_gp_md_mutex);
 spin_lock_init(&tg_pt_gp->tg_pt_gp_lock);
 atomic_set(&tg_pt_gp->tg_pt_gp_ref_cnt, 0);
 tg_pt_gp->tg_pt_gp_dev = dev;
 tg_pt_gp->tg_pt_gp_md_buf_len = ALUA_MD_BUF_LEN;
 atomic_set(&tg_pt_gp->tg_pt_gp_alua_access_state,
  ALUA_ACCESS_STATE_ACTIVE_OPTMIZED);



 tg_pt_gp->tg_pt_gp_alua_access_type =
   TPGS_EXPLICT_ALUA | TPGS_IMPLICT_ALUA;



 tg_pt_gp->tg_pt_gp_nonop_delay_msecs = ALUA_DEFAULT_NONOP_DELAY_MSECS;
 tg_pt_gp->tg_pt_gp_trans_delay_msecs = ALUA_DEFAULT_TRANS_DELAY_MSECS;
 tg_pt_gp->tg_pt_gp_implict_trans_secs = ALUA_DEFAULT_IMPLICT_TRANS_SECS;

 if (def_group) {
  spin_lock(&dev->t10_alua.tg_pt_gps_lock);
  tg_pt_gp->tg_pt_gp_id =
    dev->t10_alua.alua_tg_pt_gps_counter++;
  tg_pt_gp->tg_pt_gp_valid_id = 1;
  dev->t10_alua.alua_tg_pt_gps_count++;
  list_add_tail(&tg_pt_gp->tg_pt_gp_list,
         &dev->t10_alua.tg_pt_gps_list);
  spin_unlock(&dev->t10_alua.tg_pt_gps_lock);
 }

 return tg_pt_gp;
}
