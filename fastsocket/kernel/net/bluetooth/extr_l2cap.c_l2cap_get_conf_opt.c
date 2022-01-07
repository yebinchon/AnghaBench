
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u8 ;
struct l2cap_conf_opt {int len; int type; scalar_t__ val; } ;
typedef int __le32 ;
typedef int __le16 ;


 int BT_DBG (char*,int,int,unsigned long) ;
 int L2CAP_CONF_OPT_SIZE ;
 unsigned long __le16_to_cpu (int ) ;
 unsigned long __le32_to_cpu (int ) ;

__attribute__((used)) static inline int l2cap_get_conf_opt(void **ptr, int *type, int *olen, unsigned long *val)
{
 struct l2cap_conf_opt *opt = *ptr;
 int len;

 len = L2CAP_CONF_OPT_SIZE + opt->len;
 *ptr += len;

 *type = opt->type;
 *olen = opt->len;

 switch (opt->len) {
 case 1:
  *val = *((u8 *) opt->val);
  break;

 case 2:
  *val = __le16_to_cpu(*((__le16 *) opt->val));
  break;

 case 4:
  *val = __le32_to_cpu(*((__le32 *) opt->val));
  break;

 default:
  *val = (unsigned long) opt->val;
  break;
 }

 BT_DBG("type 0x%2.2x len %d val 0x%lx", *type, opt->len, *val);
 return len;
}
