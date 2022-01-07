
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct t10_alua_tg_pt_gp_member {int tg_pt_gp_mem_lock; struct t10_alua_tg_pt_gp* tg_pt_gp; } ;
struct t10_alua_tg_pt_gp {unsigned char tg_pt_gp_alua_access_type; } ;
struct se_port {struct t10_alua_tg_pt_gp_member* sep_alua_tg_pt_gp_mem; } ;


 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void spc_fill_alua_data(struct se_port *port, unsigned char *buf)
{
 struct t10_alua_tg_pt_gp *tg_pt_gp;
 struct t10_alua_tg_pt_gp_member *tg_pt_gp_mem;




 buf[5] = 0x80;







 if (!port)
  return;
 tg_pt_gp_mem = port->sep_alua_tg_pt_gp_mem;
 if (!tg_pt_gp_mem)
  return;

 spin_lock(&tg_pt_gp_mem->tg_pt_gp_mem_lock);
 tg_pt_gp = tg_pt_gp_mem->tg_pt_gp;
 if (tg_pt_gp)
  buf[5] |= tg_pt_gp->tg_pt_gp_alua_access_type;
 spin_unlock(&tg_pt_gp_mem->tg_pt_gp_mem_lock);
}
