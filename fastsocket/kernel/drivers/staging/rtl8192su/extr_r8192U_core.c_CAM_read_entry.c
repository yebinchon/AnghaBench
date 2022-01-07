
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct net_device {int dummy; } ;
typedef int s32 ;


 int BIT31 ;
 int CAM_CONTENT_COUNT ;
 int COMP_SEC ;
 int RCAMO ;
 int RT_TRACE (int ,char*,int) ;
 int RWCAM ;
 int printk (char*) ;
 int read_nic_dword (struct net_device*,int ) ;
 int write_nic_dword (struct net_device*,int ,int) ;

void CAM_read_entry(
 struct net_device *dev,
 u32 iIndex
)
{
  u32 target_command=0;
  u32 target_content=0;
  u8 entry_i=0;
  u32 ulStatus;
 s32 i=100;

  for(entry_i=0;entry_i<CAM_CONTENT_COUNT;entry_i++)
  {

  target_command= entry_i+CAM_CONTENT_COUNT*iIndex;
  target_command= target_command | BIT31;




  while((i--)>=0)
  {
   ulStatus = read_nic_dword(dev, RWCAM);
   if(ulStatus & BIT31){
    continue;
   }
   else{
    break;
   }
  }

    write_nic_dword(dev, RWCAM, target_command);
      RT_TRACE(COMP_SEC,"CAM_read_entry(): WRITE A0: %x \n",target_command);

     target_content = read_nic_dword(dev, RCAMO);
     RT_TRACE(COMP_SEC, "CAM_read_entry(): WRITE A8: %x \n",target_content);

  }
 printk("\n");
}
