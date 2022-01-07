
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int u8 ;
typedef int u32 ;
struct net_device {int name; } ;
struct mpoa_client {int dummy; } ;


 int ETH_ALEN ;
 int MPC ;
 int MPS ;
 int MPS_AND_MPC ;
 int TLV_MPOA_DEVICE_TYPE ;
 int* copy_macs (struct mpoa_client*,int const*,int const*,int,int) ;
 int dprintk (char*,...) ;
 struct mpoa_client* find_mpc_by_lec (struct net_device*) ;
 int mpoa_device_type_string (int) ;
 int printk (char*,...) ;
 int send_set_mps_ctrl_addr (int const*,struct mpoa_client*) ;

__attribute__((used)) static void lane2_assoc_ind(struct net_device *dev, const u8 *mac_addr,
       const u8 *tlvs, u32 sizeoftlvs)
{
 uint32_t type;
 uint8_t length, mpoa_device_type, number_of_mps_macs;
 const uint8_t *end_of_tlvs;
 struct mpoa_client *mpc;

 mpoa_device_type = number_of_mps_macs = 0;
 dprintk("mpoa: (%s) lane2_assoc_ind: received TLV(s), ", dev->name);
 dprintk("total length of all TLVs %d\n", sizeoftlvs);
 mpc = find_mpc_by_lec(dev);
 if (mpc == ((void*)0)) {
  printk("mpoa: (%s) lane2_assoc_ind: no mpc\n", dev->name);
  return;
 }
 end_of_tlvs = tlvs + sizeoftlvs;
 while (end_of_tlvs - tlvs >= 5) {
  type = (tlvs[0] << 24) | (tlvs[1] << 16) | (tlvs[2] << 8) | tlvs[3];
  length = tlvs[4];
  tlvs += 5;
  dprintk("    type 0x%x length %02x\n", type, length);
  if (tlvs + length > end_of_tlvs) {
   printk("TLV value extends past its buffer, aborting parse\n");
   return;
  }

  if (type == 0) {
   printk("mpoa: (%s) lane2_assoc_ind: TLV type was 0, returning\n", dev->name);
   return;
  }

  if (type != TLV_MPOA_DEVICE_TYPE) {
   tlvs += length;
   continue;
  }
  mpoa_device_type = *tlvs++;
  number_of_mps_macs = *tlvs++;
  dprintk("mpoa: (%s) MPOA device type '%s', ", dev->name, mpoa_device_type_string(mpoa_device_type));
  if (mpoa_device_type == MPS_AND_MPC &&
      length < (42 + number_of_mps_macs*ETH_ALEN)) {
   printk("\nmpoa: (%s) lane2_assoc_ind: short MPOA Device Type TLV\n",
          dev->name);
   continue;
  }
  if ((mpoa_device_type == MPS || mpoa_device_type == MPC)
      && length < 22 + number_of_mps_macs*ETH_ALEN) {
   printk("\nmpoa: (%s) lane2_assoc_ind: short MPOA Device Type TLV\n",
    dev->name);
   continue;
  }
  if (mpoa_device_type != MPS && mpoa_device_type != MPS_AND_MPC) {
   dprintk("ignoring non-MPS device\n");
   if (mpoa_device_type == MPC) tlvs += 20;
   continue;
  }
  if (number_of_mps_macs == 0 && mpoa_device_type == MPS_AND_MPC) {
   printk("\nmpoa: (%s) lane2_assoc_ind: MPS_AND_MPC has zero MACs\n", dev->name);
   continue;
  }
  dprintk("this MPS has %d MAC addresses\n", number_of_mps_macs);


  send_set_mps_ctrl_addr(tlvs, mpc);

  tlvs = copy_macs(mpc, mac_addr, tlvs, number_of_mps_macs, mpoa_device_type);
  if (tlvs == ((void*)0)) return;
 }
 if (end_of_tlvs - tlvs != 0)
  printk("mpoa: (%s) lane2_assoc_ind: ignoring %Zd bytes of trailing TLV carbage\n",
         dev->name, end_of_tlvs - tlvs);
 return;
}
