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
typedef  size_t u8 ;
typedef  int u16 ;
struct TYPE_2__ {int len; } ;
struct wb35_mds {size_t TxFillIndex; int* TxOwner; size_t* pTxBuffer; size_t TxDesIndex; int* TxDesFrom; int TxToggle; scalar_t__ TxTsc; int* TxBufferSize; size_t* TxCountInBuffer; int /*<<< orphan*/  TxThreadCount; int /*<<< orphan*/  TxTsc_2; scalar_t__ TxPause; } ;
struct hw_data {int IsKeyPreSet; } ;
struct wbsoft_priv {TYPE_1__ sMlmeFrame; struct wb35_mds Mds; struct hw_data sHwData; } ;
struct wb35_descriptor {size_t Descriptor_ID; scalar_t__ EapFix; } ;

/* Variables and functions */
 int CURRENT_FRAGMENT_THRESHOLD ; 
 int DOT_11_DA_OFFSET ; 
 scalar_t__ FUNC0 (struct hw_data*) ; 
 size_t MAC_SUBTYPE_MNGMNT_PROBE_REQUEST ; 
 size_t MAX_USB_TX_BUFFER ; 
 size_t MAX_USB_TX_BUFFER_NUMBER ; 
 size_t MAX_USB_TX_DESCRIPTOR ; 
 int /*<<< orphan*/  FUNC1 (struct wbsoft_priv*,struct wb35_descriptor*) ; 
 int /*<<< orphan*/  FUNC2 (struct wbsoft_priv*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (struct wbsoft_priv*,struct wb35_descriptor*,size_t*) ; 
 int /*<<< orphan*/  FUNC4 (struct wbsoft_priv*,struct wb35_descriptor*,size_t*) ; 
 int /*<<< orphan*/  FUNC5 (struct wbsoft_priv*,struct wb35_descriptor*,size_t*) ; 
 int /*<<< orphan*/  FUNC6 (struct wbsoft_priv*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct hw_data*) ; 
 int /*<<< orphan*/  FUNC10 (size_t*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 

void
FUNC12(struct wbsoft_priv * adapter)
{
	struct hw_data *	pHwData = &adapter->sHwData;
	struct wb35_mds *pMds = &adapter->Mds;
	struct wb35_descriptor	TxDes;
	struct wb35_descriptor *pTxDes = &TxDes;
	u8		*XmitBufAddress;
	u16		XmitBufSize, PacketSize, stmp, CurrentSize, FragmentThreshold;
	u8		FillIndex, TxDesIndex, FragmentCount, FillCount;
	unsigned char	BufferFilled = false;


	if (pMds->TxPause)
		return;
	if (!FUNC9(pHwData))
		return;

	//Only one thread can be run here
	if (FUNC8(&pMds->TxThreadCount) != 1)
		goto cleanup;

	// Start to fill the data
	do {
		FillIndex = pMds->TxFillIndex;
		if (pMds->TxOwner[FillIndex]) { // Is owned by software 0:Yes 1:No
#ifdef _PE_TX_DUMP_
			printk("[Mds_Tx] Tx Owner is H/W.\n");
#endif
			break;
		}

		XmitBufAddress = pMds->pTxBuffer + (MAX_USB_TX_BUFFER * FillIndex); //Get buffer
		XmitBufSize = 0;
		FillCount = 0;
		do {
			PacketSize = adapter->sMlmeFrame.len;
			if (!PacketSize)
				break;

			//For Check the buffer resource
			FragmentThreshold = CURRENT_FRAGMENT_THRESHOLD;
			//931130.5.b
			FragmentCount = PacketSize/FragmentThreshold + 1;
			stmp = PacketSize + FragmentCount*32 + 8;//931130.5.c 8:MIC
			if ((XmitBufSize + stmp) >= MAX_USB_TX_BUFFER) {
				FUNC11("[Mds_Tx] Excess max tx buffer.\n");
				break; // buffer is not enough
			}


			//
			// Start transmitting
			//
			BufferFilled = true;

			/* Leaves first u8 intact */
			FUNC10((u8 *)pTxDes + 1, 0, sizeof(struct wb35_descriptor) - 1);

			TxDesIndex = pMds->TxDesIndex;//Get the current ID
			pTxDes->Descriptor_ID = TxDesIndex;
			pMds->TxDesFrom[ TxDesIndex ] = 2;//Storing the information of source comming from
			pMds->TxDesIndex++;
			pMds->TxDesIndex %= MAX_USB_TX_DESCRIPTOR;

			FUNC1( adapter, pTxDes );

			// Copy header. 8byte USB + 24byte 802.11Hdr. Set TxRate, Preamble type
			FUNC5( adapter, pTxDes, XmitBufAddress );

			// For speed up Key setting
			if (pTxDes->EapFix) {
#ifdef _PE_TX_DUMP_
				printk("35: EPA 4th frame detected. Size = %d\n", PacketSize);
#endif
				pHwData->IsKeyPreSet = 1;
			}

			// Copy (fragment) frame body, and set USB, 802.11 hdr flag
			CurrentSize = FUNC3(adapter, pTxDes, XmitBufAddress);

			// Set RTS/CTS and Normal duration field into buffer
			FUNC4(adapter, pTxDes, XmitBufAddress);

			//Shift to the next address
			XmitBufSize += CurrentSize;
			XmitBufAddress += CurrentSize;

#ifdef _IBSS_BEACON_SEQ_STICK_
			if ((XmitBufAddress[ DOT_11_DA_OFFSET+8 ] & 0xfc) != MAC_SUBTYPE_MNGMNT_PROBE_REQUEST) // +8 for USB hdr
#endif
				pMds->TxToggle = true;

			// Get packet to transmit completed, 1:TESTSTA 2:MLME 3: Ndis data
			FUNC2(adapter, 0, true);

			// Software TSC count 20060214
			pMds->TxTsc++;
			if (pMds->TxTsc == 0)
				pMds->TxTsc_2++;

			FillCount++; // 20060928
		} while (FUNC0(pHwData)); // End of multiple MSDU copy loop. false = single true = multiple sending

		// Move to the next one, if necessary
		if (BufferFilled) {
			// size setting
			pMds->TxBufferSize[ FillIndex ] = XmitBufSize;

			// 20060928 set Tx count
			pMds->TxCountInBuffer[FillIndex] = FillCount;

			// Set owner flag
			pMds->TxOwner[FillIndex] = 1;

			pMds->TxFillIndex++;
			pMds->TxFillIndex %= MAX_USB_TX_BUFFER_NUMBER;
			BufferFilled = false;
		} else
			break;

		if (!PacketSize) // No more pk for transmitting
			break;

	} while(true);

	//
	// Start to send by lower module
	//
	if (!pHwData->IsKeyPreSet)
		FUNC6(adapter);

 cleanup:
	FUNC7(&pMds->TxThreadCount);
}