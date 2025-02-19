
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef scalar_t__ u32 ;
struct r8192_priv {scalar_t__* DefaultInitialGain; scalar_t__ reset_count; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ pre_connect_state; scalar_t__ cur_connect_state; scalar_t__ rssi_val; scalar_t__ backoff_val; scalar_t__ rx_gain_range_max; scalar_t__ cur_ig_value; scalar_t__ rx_gain_range_min; scalar_t__ pre_ig_value; scalar_t__ dig_algorithm_switch; } ;


 scalar_t__ DIG_CONNECT ;
 TYPE_1__ dm_digtable ;
 struct r8192_priv* ieee80211_priv (struct net_device*) ;
 int rOFDM0_XAAGCCore1 ;
 int rOFDM0_XBAGCCore1 ;
 int rOFDM0_XCAGCCore1 ;
 int rOFDM0_XDAGCCore1 ;
 scalar_t__ read_nic_byte (struct net_device*,int ) ;
 int write_nic_byte (struct net_device*,int ,int) ;

__attribute__((used)) static void dm_initial_gain(
 struct net_device * dev)
{
 struct r8192_priv *priv = ieee80211_priv(dev);
 u8 initial_gain=0;
 static u8 initialized=0, force_write=0;
 static u32 reset_cnt=0;

 if(dm_digtable.dig_algorithm_switch)
 {
  initialized = 0;
  reset_cnt = 0;
 }

 if(dm_digtable.pre_connect_state == dm_digtable.cur_connect_state)
 {
  if(dm_digtable.cur_connect_state == DIG_CONNECT)
  {
   if((dm_digtable.rssi_val+10-dm_digtable.backoff_val) > dm_digtable.rx_gain_range_max)
    dm_digtable.cur_ig_value = dm_digtable.rx_gain_range_max;
   else if((dm_digtable.rssi_val+10-dm_digtable.backoff_val) < dm_digtable.rx_gain_range_min)
    dm_digtable.cur_ig_value = dm_digtable.rx_gain_range_min;
   else
    dm_digtable.cur_ig_value = dm_digtable.rssi_val+10-dm_digtable.backoff_val;
  }
  else
  {
   if(dm_digtable.cur_ig_value == 0)
    dm_digtable.cur_ig_value = priv->DefaultInitialGain[0];
   else
    dm_digtable.cur_ig_value = dm_digtable.pre_ig_value;
  }
 }
 else
 {
  dm_digtable.cur_ig_value = priv->DefaultInitialGain[0];
  dm_digtable.pre_ig_value = 0;
 }



 if(priv->reset_count != reset_cnt)
 {
  force_write = 1;
  reset_cnt = priv->reset_count;
 }

 if(dm_digtable.pre_ig_value != read_nic_byte(dev, rOFDM0_XAAGCCore1))
  force_write = 1;

 {
  if((dm_digtable.pre_ig_value != dm_digtable.cur_ig_value)
   || !initialized || force_write)
  {
   initial_gain = (u8)dm_digtable.cur_ig_value;


   write_nic_byte(dev, rOFDM0_XAAGCCore1, initial_gain);
   write_nic_byte(dev, rOFDM0_XBAGCCore1, initial_gain);
   write_nic_byte(dev, rOFDM0_XCAGCCore1, initial_gain);
   write_nic_byte(dev, rOFDM0_XDAGCCore1, initial_gain);
   dm_digtable.pre_ig_value = dm_digtable.cur_ig_value;
   initialized = 1;
   force_write = 0;
  }
 }
}
