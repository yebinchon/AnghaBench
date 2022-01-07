
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct mpoa_client {int number_of_mps_macs; int * mps_macs; TYPE_1__* dev; } ;
struct TYPE_2__ {int name; } ;


 int ETH_ALEN ;
 int GFP_KERNEL ;
 int MPS_AND_MPC ;
 int kfree (int *) ;
 int * kmalloc (int,int ) ;
 int memcpy (int *,int const*,int) ;
 int printk (char*,int ) ;

__attribute__((used)) static const uint8_t *copy_macs(struct mpoa_client *mpc,
    const uint8_t *router_mac,
    const uint8_t *tlvs, uint8_t mps_macs,
    uint8_t device_type)
{
 int num_macs;
 num_macs = (mps_macs > 1) ? mps_macs : 1;

 if (mpc->number_of_mps_macs != num_macs) {
  if (mpc->number_of_mps_macs != 0) kfree(mpc->mps_macs);
  mpc->number_of_mps_macs = 0;
  mpc->mps_macs = kmalloc(num_macs*ETH_ALEN, GFP_KERNEL);
  if (mpc->mps_macs == ((void*)0)) {
   printk("mpoa: (%s) copy_macs: out of mem\n", mpc->dev->name);
   return ((void*)0);
  }
 }
 memcpy(mpc->mps_macs, router_mac, ETH_ALEN);
 tlvs += 20; if (device_type == MPS_AND_MPC) tlvs += 20;
 if (mps_macs > 0)
  memcpy(mpc->mps_macs, tlvs, mps_macs*ETH_ALEN);
 tlvs += mps_macs*ETH_ALEN;
 mpc->number_of_mps_macs = num_macs;

 return tlvs;
}
