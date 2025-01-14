
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct t10_alua_tg_pt_gp_member {int tg_pt_gp_mem_lock; struct t10_alua_tg_pt_gp* tg_pt_gp; } ;
struct config_item {int dummy; } ;
struct TYPE_2__ {struct config_item cg_item; } ;
struct t10_alua_tg_pt_gp {char* tg_pt_gp_id; int tg_pt_gp_alua_access_status; int tg_pt_gp_alua_access_state; TYPE_1__ tg_pt_gp_group; } ;
struct se_port {int sep_tg_pt_secondary_stat; int sep_tg_pt_secondary_offline; struct t10_alua_tg_pt_gp_member* sep_alua_tg_pt_gp_mem; } ;
typedef int ssize_t ;


 scalar_t__ atomic_read (int *) ;
 char* config_item_name (struct config_item*) ;
 char* core_alua_dump_state (scalar_t__) ;
 char* core_alua_dump_status (int ) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 scalar_t__ sprintf (char*,char*,char*,char*,char*,char*,char*,char*) ;

ssize_t core_alua_show_tg_pt_gp_info(struct se_port *port, char *page)
{
 struct config_item *tg_pt_ci;
 struct t10_alua_tg_pt_gp *tg_pt_gp;
 struct t10_alua_tg_pt_gp_member *tg_pt_gp_mem;
 ssize_t len = 0;

 tg_pt_gp_mem = port->sep_alua_tg_pt_gp_mem;
 if (!tg_pt_gp_mem)
  return len;

 spin_lock(&tg_pt_gp_mem->tg_pt_gp_mem_lock);
 tg_pt_gp = tg_pt_gp_mem->tg_pt_gp;
 if (tg_pt_gp) {
  tg_pt_ci = &tg_pt_gp->tg_pt_gp_group.cg_item;
  len += sprintf(page, "TG Port Alias: %s\nTG Port Group ID:"
   " %hu\nTG Port Primary Access State: %s\nTG Port "
   "Primary Access Status: %s\nTG Port Secondary Access"
   " State: %s\nTG Port Secondary Access Status: %s\n",
   config_item_name(tg_pt_ci), tg_pt_gp->tg_pt_gp_id,
   core_alua_dump_state(atomic_read(
     &tg_pt_gp->tg_pt_gp_alua_access_state)),
   core_alua_dump_status(
    tg_pt_gp->tg_pt_gp_alua_access_status),
   (atomic_read(&port->sep_tg_pt_secondary_offline)) ?
   "Offline" : "None",
   core_alua_dump_status(port->sep_tg_pt_secondary_stat));
 }
 spin_unlock(&tg_pt_gp_mem->tg_pt_gp_mem_lock);

 return len;
}
