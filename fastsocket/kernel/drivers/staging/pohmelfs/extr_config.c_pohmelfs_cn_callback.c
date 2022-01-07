
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct netlink_skb_parms {int eff_cap; } ;
struct cn_msg {int flags; } ;


 int CAP_SYS_ADMIN ;
 int ENOSYS ;







 int cap_raised (int ,int ) ;
 int pohmelfs_cn_crypto (struct cn_msg*) ;
 int pohmelfs_cn_ctl (struct cn_msg*,int) ;
 int pohmelfs_cn_disp (struct cn_msg*) ;
 int pohmelfs_cn_dump (struct cn_msg*) ;
 int pohmelfs_cn_flush (struct cn_msg*) ;

__attribute__((used)) static void pohmelfs_cn_callback(struct cn_msg *msg, struct netlink_skb_parms *nsp)
{
 int err;

 if (!cap_raised(nsp->eff_cap, CAP_SYS_ADMIN))
  return;

 switch (msg->flags) {
  case 134:
  case 132:
  case 129:
   err = pohmelfs_cn_ctl(msg, msg->flags);
   break;
  case 130:
   err = pohmelfs_cn_flush(msg);
   break;
  case 128:
   err = pohmelfs_cn_disp(msg);
   break;
  case 131:
   err = pohmelfs_cn_dump(msg);
   break;
  case 133:
   err = pohmelfs_cn_crypto(msg);
   break;
  default:
   err = -ENOSYS;
   break;
 }
}
