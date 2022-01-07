
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct t10_alua_tg_pt_gp_member {int tg_pt_gp_mem_lock; struct t10_alua_tg_pt_gp* tg_pt_gp; } ;
struct TYPE_2__ {int cg_item; } ;
struct t10_alua_tg_pt_gp {int tg_pt_gp_trans_delay_msecs; int tg_pt_gp_id; TYPE_1__ tg_pt_gp_group; int tg_pt_gp_md_buf_len; } ;
struct se_port {int sep_tg_pt_md_mutex; scalar_t__ sep_tg_pt_secondary_write_md; int sep_tg_pt_secondary_stat; int sep_tg_pt_secondary_offline; } ;


 int ALUA_STATUS_ALTERED_BY_EXPLICT_STPG ;
 int ALUA_STATUS_ALTERED_BY_IMPLICT_ALUA ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_KERNEL ;
 int atomic_set (int *,int) ;
 int config_item_name (int *) ;
 int core_alua_update_tpg_secondary_metadata (struct t10_alua_tg_pt_gp_member*,struct se_port*,unsigned char*,int ) ;
 int kfree (unsigned char*) ;
 unsigned char* kzalloc (int ,int ) ;
 int msleep_interruptible (int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_debug (char*,char*,int ,int ,char*) ;
 int pr_err (char*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int core_alua_set_tg_pt_secondary_state(
 struct t10_alua_tg_pt_gp_member *tg_pt_gp_mem,
 struct se_port *port,
 int explict,
 int offline)
{
 struct t10_alua_tg_pt_gp *tg_pt_gp;
 unsigned char *md_buf;
 u32 md_buf_len;
 int trans_delay_msecs;

 spin_lock(&tg_pt_gp_mem->tg_pt_gp_mem_lock);
 tg_pt_gp = tg_pt_gp_mem->tg_pt_gp;
 if (!tg_pt_gp) {
  spin_unlock(&tg_pt_gp_mem->tg_pt_gp_mem_lock);
  pr_err("Unable to complete secondary state"
    " transition\n");
  return -EINVAL;
 }
 trans_delay_msecs = tg_pt_gp->tg_pt_gp_trans_delay_msecs;




 if (offline)
  atomic_set(&port->sep_tg_pt_secondary_offline, 1);
 else
  atomic_set(&port->sep_tg_pt_secondary_offline, 0);

 md_buf_len = tg_pt_gp->tg_pt_gp_md_buf_len;
 port->sep_tg_pt_secondary_stat = (explict) ?
   ALUA_STATUS_ALTERED_BY_EXPLICT_STPG :
   ALUA_STATUS_ALTERED_BY_IMPLICT_ALUA;

 pr_debug("Successful %s ALUA transition TG PT Group: %s ID: %hu"
  " to secondary access state: %s\n", (explict) ? "explict" :
  "implict", config_item_name(&tg_pt_gp->tg_pt_gp_group.cg_item),
  tg_pt_gp->tg_pt_gp_id, (offline) ? "OFFLINE" : "ONLINE");

 spin_unlock(&tg_pt_gp_mem->tg_pt_gp_mem_lock);




 if (trans_delay_msecs != 0)
  msleep_interruptible(trans_delay_msecs);




 if (port->sep_tg_pt_secondary_write_md) {
  md_buf = kzalloc(md_buf_len, GFP_KERNEL);
  if (!md_buf) {
   pr_err("Unable to allocate md_buf for"
    " secondary ALUA access metadata\n");
   return -ENOMEM;
  }
  mutex_lock(&port->sep_tg_pt_md_mutex);
  core_alua_update_tpg_secondary_metadata(tg_pt_gp_mem, port,
    md_buf, md_buf_len);
  mutex_unlock(&port->sep_tg_pt_md_mutex);

  kfree(md_buf);
 }

 return 0;
}
