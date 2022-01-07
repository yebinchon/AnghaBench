
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int tlv ;
struct mpoa_client {int* our_ctrl_addr; TYPE_2__* dev; } ;
struct lec_priv {TYPE_1__* lane2_ops; } ;
struct k_message {int MPS_ctrl; } ;
struct TYPE_6__ {char* name; int dev_addr; } ;
struct TYPE_5__ {int (* associate_req ) (TYPE_2__*,int ,int*,int) ;int (* resolve ) (TYPE_2__*,int *,int,int *,int *) ;} ;


 int ATM_ESA_LEN ;
 int dprintk (char*,...) ;
 int memcpy (int*,int ,int) ;
 struct lec_priv* netdev_priv (TYPE_2__*) ;
 int printk (char*,char*) ;
 int stub1 (TYPE_2__*,int ,int*,int) ;
 int stub2 (TYPE_2__*,int *,int,int *,int *) ;

__attribute__((used)) static void set_mpc_ctrl_addr_rcvd(struct k_message *mesg, struct mpoa_client *mpc)
{
 struct lec_priv *priv;
 int i, retval ;

 uint8_t tlv[4 + 1 + 1 + 1 + ATM_ESA_LEN];

 tlv[0] = 00; tlv[1] = 0xa0; tlv[2] = 0x3e; tlv[3] = 0x2a;
 tlv[4] = 1 + 1 + ATM_ESA_LEN;
 tlv[5] = 0x02;
 tlv[6] = 0x00;

 memcpy(&tlv[7], mesg->MPS_ctrl, ATM_ESA_LEN);
 memcpy(mpc->our_ctrl_addr, mesg->MPS_ctrl, ATM_ESA_LEN);

 dprintk("mpoa: (%s) setting MPC ctrl ATM address to ",
        (mpc->dev) ? mpc->dev->name : "<unknown>");
 for (i = 7; i < sizeof(tlv); i++)
  dprintk("%02x ", tlv[i]);
 dprintk("\n");

 if (mpc->dev) {
  priv = netdev_priv(mpc->dev);
  retval = priv->lane2_ops->associate_req(mpc->dev, mpc->dev->dev_addr, tlv, sizeof(tlv));
  if (retval == 0)
   printk("mpoa: (%s) MPOA device type TLV association failed\n", mpc->dev->name);
  retval = priv->lane2_ops->resolve(mpc->dev, ((void*)0), 1, ((void*)0), ((void*)0));
  if (retval < 0)
   printk("mpoa: (%s) targetless LE_ARP request failed\n", mpc->dev->name);
 }

 return;
}
