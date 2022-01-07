
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u32 ;
typedef size_t u16 ;
struct t10_pr_registration {unsigned char* pr_reg_isid; scalar_t__ isid_present_at_reg; } ;
struct se_portal_group {int dummy; } ;
struct se_node_acl {char* initiatorname; int nacl_sess_lock; } ;


 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 size_t sprintf (unsigned char*,char*,char*) ;

u32 iscsi_get_pr_transport_id(
 struct se_portal_group *se_tpg,
 struct se_node_acl *se_nacl,
 struct t10_pr_registration *pr_reg,
 int *format_code,
 unsigned char *buf)
{
 u32 off = 4, padding = 0;
 u16 len = 0;

 spin_lock_irq(&se_nacl->nacl_sess_lock);



 buf[0] = 0x05;
 len = sprintf(&buf[off], "%s", se_nacl->initiatorname);



 len++;
 if ((*format_code == 1) && (pr_reg->isid_present_at_reg)) {




  buf[0] |= 0x40;
  buf[off+len] = 0x2c; off++;
  buf[off+len] = 0x69; off++;
  buf[off+len] = 0x2c; off++;
  buf[off+len] = 0x30; off++;
  buf[off+len] = 0x78; off++;
  len += 5;
  buf[off+len] = pr_reg->pr_reg_isid[0]; off++;
  buf[off+len] = pr_reg->pr_reg_isid[1]; off++;
  buf[off+len] = pr_reg->pr_reg_isid[2]; off++;
  buf[off+len] = pr_reg->pr_reg_isid[3]; off++;
  buf[off+len] = pr_reg->pr_reg_isid[4]; off++;
  buf[off+len] = pr_reg->pr_reg_isid[5]; off++;
  buf[off+len] = '\0'; off++;
  len += 7;
 }
 spin_unlock_irq(&se_nacl->nacl_sess_lock);





 padding = ((-len) & 3);
 if (padding != 0)
  len += padding;

 buf[2] = ((len >> 8) & 0xff);
 buf[3] = (len & 0xff);




 len += 4;

 return len;
}
