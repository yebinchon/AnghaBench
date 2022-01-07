
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u32 ;
typedef int u16 ;
struct t10_alua_tg_pt_gp_member {int tg_pt_gp_mem_lock; struct t10_alua_tg_pt_gp* tg_pt_gp; } ;
struct t10_alua_tg_pt_gp {int tg_pt_gp_id; } ;
struct t10_alua_lu_gp_member {int lu_gp_mem_lock; struct t10_alua_lu_gp* lu_gp; } ;
struct t10_alua_lu_gp {int lu_gp_id; } ;
struct se_portal_group {TYPE_1__* se_tpg_tfo; } ;
struct se_port {int sep_rtpi; struct t10_alua_tg_pt_gp_member* sep_alua_tg_pt_gp_mem; struct se_portal_group* sep_tpg; } ;
struct se_lun {struct se_port* lun_sep; } ;
struct TYPE_4__ {unsigned char* model; unsigned char* unit_serial; } ;
struct se_device {int dev_flags; struct t10_alua_lu_gp_member* dev_alua_lu_gp_mem; TYPE_2__ t10_wwn; } ;
struct se_cmd {struct se_lun* se_lun; struct se_device* se_dev; } ;
typedef int sense_reason_t ;
struct TYPE_3__ {int (* get_fabric_proto_ident ) (struct se_portal_group*) ;unsigned char* (* tpg_get_wwn ) (struct se_portal_group*) ;int (* tpg_get_tag ) (struct se_portal_group*) ;} ;


 int DF_EMULATED_VPD_UNIT_SERIAL ;
 int memcpy (unsigned char*,char*,int) ;
 int spc_parse_naa_6h_vendor_specific (struct se_device*,unsigned char*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 size_t sprintf (unsigned char*,char*,unsigned char*,...) ;
 size_t strlen (unsigned char*) ;
 int stub1 (struct se_portal_group*) ;
 int stub2 (struct se_portal_group*) ;
 unsigned char* stub3 (struct se_portal_group*) ;
 int stub4 (struct se_portal_group*) ;
 int stub5 (struct se_portal_group*) ;
 unsigned char* stub6 (struct se_portal_group*) ;
 char* stub7 (struct se_portal_group*) ;

sense_reason_t
spc_emulate_evpd_83(struct se_cmd *cmd, unsigned char *buf)
{
 struct se_device *dev = cmd->se_dev;
 struct se_lun *lun = cmd->se_lun;
 struct se_port *port = ((void*)0);
 struct se_portal_group *tpg = ((void*)0);
 struct t10_alua_lu_gp_member *lu_gp_mem;
 struct t10_alua_tg_pt_gp *tg_pt_gp;
 struct t10_alua_tg_pt_gp_member *tg_pt_gp_mem;
 unsigned char *prod = &dev->t10_wwn.model[0];
 u32 prod_len;
 u32 unit_serial_len, off = 0;
 u16 len = 0, id_len;

 off = 4;
 if (!(dev->dev_flags & DF_EMULATED_VPD_UNIT_SERIAL))
  goto check_t10_vend_desc;


 buf[off++] = 0x1;


 buf[off] = 0x00;


 buf[off++] |= 0x3;
 off++;


 buf[off++] = 0x10;




 buf[off++] = (0x6 << 4);




 buf[off++] = 0x01;
 buf[off++] = 0x40;
 buf[off] = (0x5 << 4);






 spc_parse_naa_6h_vendor_specific(dev, &buf[off]);

 len = 20;
 off = (len + 4);

check_t10_vend_desc:



 id_len = 8;
 prod_len = 4;
 prod_len += 8;
 prod_len += strlen(prod);
 prod_len++;

 if (dev->dev_flags & DF_EMULATED_VPD_UNIT_SERIAL) {
  unit_serial_len = strlen(&dev->t10_wwn.unit_serial[0]);
  unit_serial_len++;

  id_len += sprintf(&buf[off+12], "%s:%s", prod,
    &dev->t10_wwn.unit_serial[0]);
 }
 buf[off] = 0x2;
 buf[off+1] = 0x1;
 buf[off+2] = 0x0;
 memcpy(&buf[off+4], "LIO-ORG", 8);

 id_len++;

 buf[off+3] = id_len;

 len += (id_len + 4);
 off += (id_len + 4);



 port = lun->lun_sep;
 if (port) {
  struct t10_alua_lu_gp *lu_gp;
  u32 padding, scsi_name_len;
  u16 lu_gp_id = 0;
  u16 tg_pt_gp_id = 0;
  u16 tpgt;

  tpg = port->sep_tpg;







  buf[off] =
   (tpg->se_tpg_tfo->get_fabric_proto_ident(tpg) << 4);
  buf[off++] |= 0x1;
  buf[off] = 0x80;

  buf[off] |= 0x10;

  buf[off++] |= 0x4;
  off++;
  buf[off++] = 4;


  off += 2;
  buf[off++] = ((port->sep_rtpi >> 8) & 0xff);
  buf[off++] = (port->sep_rtpi & 0xff);
  len += 8;







  tg_pt_gp_mem = port->sep_alua_tg_pt_gp_mem;
  if (!tg_pt_gp_mem)
   goto check_lu_gp;

  spin_lock(&tg_pt_gp_mem->tg_pt_gp_mem_lock);
  tg_pt_gp = tg_pt_gp_mem->tg_pt_gp;
  if (!tg_pt_gp) {
   spin_unlock(&tg_pt_gp_mem->tg_pt_gp_mem_lock);
   goto check_lu_gp;
  }
  tg_pt_gp_id = tg_pt_gp->tg_pt_gp_id;
  spin_unlock(&tg_pt_gp_mem->tg_pt_gp_mem_lock);

  buf[off] =
   (tpg->se_tpg_tfo->get_fabric_proto_ident(tpg) << 4);
  buf[off++] |= 0x1;
  buf[off] = 0x80;

  buf[off] |= 0x10;

  buf[off++] |= 0x5;
  off++;
  buf[off++] = 4;
  off += 2;
  buf[off++] = ((tg_pt_gp_id >> 8) & 0xff);
  buf[off++] = (tg_pt_gp_id & 0xff);
  len += 8;




check_lu_gp:
  lu_gp_mem = dev->dev_alua_lu_gp_mem;
  if (!lu_gp_mem)
   goto check_scsi_name;

  spin_lock(&lu_gp_mem->lu_gp_mem_lock);
  lu_gp = lu_gp_mem->lu_gp;
  if (!lu_gp) {
   spin_unlock(&lu_gp_mem->lu_gp_mem_lock);
   goto check_scsi_name;
  }
  lu_gp_id = lu_gp->lu_gp_id;
  spin_unlock(&lu_gp_mem->lu_gp_mem_lock);

  buf[off++] |= 0x1;

  buf[off++] |= 0x6;
  off++;
  buf[off++] = 4;
  off += 2;
  buf[off++] = ((lu_gp_id >> 8) & 0xff);
  buf[off++] = (lu_gp_id & 0xff);
  len += 8;







check_scsi_name:
  scsi_name_len = strlen(tpg->se_tpg_tfo->tpg_get_wwn(tpg));

  scsi_name_len += 10;

  padding = ((-scsi_name_len) & 3);
  if (padding != 0)
   scsi_name_len += padding;

  scsi_name_len += 4;

  buf[off] =
   (tpg->se_tpg_tfo->get_fabric_proto_ident(tpg) << 4);
  buf[off++] |= 0x3;
  buf[off] = 0x80;

  buf[off] |= 0x10;

  buf[off++] |= 0x8;
  off += 2;






  tpgt = tpg->se_tpg_tfo->tpg_get_tag(tpg);
  scsi_name_len = sprintf(&buf[off], "%s,t,0x%04x",
     tpg->se_tpg_tfo->tpg_get_wwn(tpg), tpgt);
  scsi_name_len += 1 ;
  if (padding)
   scsi_name_len += padding;

  buf[off-1] = scsi_name_len;
  off += scsi_name_len;

  len += (scsi_name_len + 4);
 }
 buf[2] = ((len >> 8) & 0xff);
 buf[3] = (len & 0xff);
 return 0;
}
