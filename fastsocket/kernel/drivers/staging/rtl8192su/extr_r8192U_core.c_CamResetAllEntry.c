
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;


 int BIT30 ;
 int BIT31 ;
 int CAM_empty_entry (struct net_device*,scalar_t__) ;
 int CAM_mark_invalid (struct net_device*,scalar_t__) ;
 int RWCAM ;
 scalar_t__ TOTAL_CAM_ENTRY ;
 scalar_t__ ucIndex ;
 int write_nic_dword (struct net_device*,int ,int) ;

void CamResetAllEntry(struct net_device *dev)
{

 u32 ulcommand = 0;
 ulcommand |= BIT31|BIT30;
 write_nic_dword(dev, RWCAM, ulcommand);







}
