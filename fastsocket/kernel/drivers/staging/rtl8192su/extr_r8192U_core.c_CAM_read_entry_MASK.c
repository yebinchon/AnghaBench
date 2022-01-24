#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u8 ;
typedef  int u32 ;
struct net_device {int dummy; } ;
typedef  int s32 ;

/* Variables and functions */
 int BIT31 ; 
 int CAM_CONTENT_COUNT ; 
 int /*<<< orphan*/  COMP_SEC ; 
 int /*<<< orphan*/  RCAMO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  RWCAM ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int FUNC2 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,int /*<<< orphan*/ ,int) ; 

void FUNC4(
	struct net_device *dev,
	u32	 		iIndex
)
{
 	u32 target_command=0;
	 u32 target_content=0;
	 u8 entry_i=0;
	 u32 ulStatus;
	s32 i=100;
//	printk("=======>start read CAM\n");
 	for(entry_i=0;entry_i<CAM_CONTENT_COUNT;entry_i++)
 	{
   	// polling bit, and No Write enable, and address
		target_command= entry_i+CAM_CONTENT_COUNT*iIndex;
		target_command= target_command | BIT31;

	//Check polling bit is clear
//	mdelay(1);
#if 1
		while((i--)>=0)
		{
			ulStatus = FUNC2(dev, RWCAM);
			if(ulStatus & BIT31){
				continue;
			}
			else{
				break;
			}
		}
#endif
  		FUNC3(dev, RWCAM, target_command);
   	 	FUNC0(COMP_SEC,"CAM_read_entry(): WRITE A0: %x \n",target_command);
   	 //	printk("CAM_read_entry(): WRITE A0: %lx \n",target_command);
  	 	target_content = FUNC2(dev, RCAMO);
  	 	FUNC0(COMP_SEC, "CAM_read_entry(): WRITE A8: %x \n",target_content);
  	 //	printk("CAM_read_entry(): WRITE A8: %lx \n",target_content);
 	}
	FUNC1("\n");
}