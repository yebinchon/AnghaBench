#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct r8192_priv {scalar_t__ bTXPowerDataReadFromEEPORM; } ;
struct net_device {int dummy; } ;
struct TYPE_2__ {scalar_t__ bInHctTest; } ;

/* Variables and functions */
 TYPE_1__* Adapter ; 
 int /*<<< orphan*/  COMP_DBG ; 
 int /*<<< orphan*/  COMP_PHY ; 
 int MACPHY_ArrayLength ; 
 int MACPHY_ArrayLengthDTM ; 
 int MACPHY_Array_PGLength ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int* Rtl819XMACPHY_Array ; 
 int* Rtl819XMACPHY_ArrayDTM ; 
 int* Rtl819XMACPHY_Array_PG ; 
 struct r8192_priv* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int,int,int) ; 

void FUNC3(struct net_device* dev)
{
	u32 dwArrayLen = 0, i = 0;
	u32* pdwArray = NULL;
	struct r8192_priv *priv = FUNC1(dev);
#ifdef TO_DO_LIST
if(Adapter->bInHctTest)
	{
		RT_TRACE(COMP_PHY, "Rtl819XMACPHY_ArrayDTM\n");
		dwArrayLen = MACPHY_ArrayLengthDTM;
		pdwArray = Rtl819XMACPHY_ArrayDTM;
	}
	else if(priv->bTXPowerDataReadFromEEPORM)
#endif
	 if(priv->bTXPowerDataReadFromEEPORM)
	{
		FUNC0(COMP_PHY, "Rtl819XMACPHY_Array_PG\n");
		dwArrayLen = MACPHY_Array_PGLength;
		pdwArray = Rtl819XMACPHY_Array_PG;

	}
	else
	{
		FUNC0(COMP_PHY,"Read rtl819XMACPHY_Array\n");
		dwArrayLen = MACPHY_ArrayLength;
		pdwArray = Rtl819XMACPHY_Array;
	}
	for(i = 0; i<dwArrayLen; i=i+3){
		FUNC0(COMP_DBG, "The Rtl8190MACPHY_Array[0] is %x Rtl8190MACPHY_Array[1] is %x Rtl8190MACPHY_Array[2] is %x\n",
				pdwArray[i], pdwArray[i+1], pdwArray[i+2]);
		if(pdwArray[i] == 0x318)
		{
			pdwArray[i+2] = 0x00000800;
			//DbgPrint("ptrArray[i], ptrArray[i+1], ptrArray[i+2] = %x, %x, %x\n",
			//	ptrArray[i], ptrArray[i+1], ptrArray[i+2]);
		}
		FUNC2(dev, pdwArray[i], pdwArray[i+1], pdwArray[i+2]);
	}
	return;

}