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
struct r8180_priv {int SetRFPowerStateInProgress; int rf_chip; int RFProgType; int /*<<< orphan*/  eRFPowerState; int /*<<< orphan*/  txringcount; int /*<<< orphan*/  TxPollingTimes; } ;
struct net_device {int dummy; } ;
typedef  int /*<<< orphan*/  RT_RF_POWER_STATE ;

/* Variables and functions */
 int /*<<< orphan*/  ANAPARAM ; 
 int /*<<< orphan*/  ANAPARAM2 ; 
 int /*<<< orphan*/  ANAPARM2_ON ; 
 int /*<<< orphan*/  ANAPARM_ON ; 
 int BIT5 ; 
 int BIT6 ; 
 int CONFIG3 ; 
 int CONFIG3_PARM_En ; 
 int CONFIG4 ; 
 int CR9346 ; 
 int /*<<< orphan*/  LPS_MAX_SLEEP_WAITING_TIMES_87SE ; 
 int MAX_DOZE_WAITING_TIMES_85B ; 
 int MAX_POLLING_24F_TIMES_87SE ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,int,int) ; 
#define  RF_ZEBRA2 132 
#define  RF_ZEBRA4 131 
#define  eRfOff 130 
#define  eRfOn 129 
#define  eRfSleep 128 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int) ; 
 struct r8180_priv* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*,int,int) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*,int,int) ; 

bool FUNC11(struct net_device *dev,
			      RT_RF_POWER_STATE eRFPowerState)
{
	struct r8180_priv *priv = FUNC2(dev);
	u8			btCR9346, btConfig3;
	bool bActionAllowed = true, bTurnOffBB = true;
	u8			u1bTmp;
	int			i;
	bool		bResult = true;
	u8			QueueID;

	if (priv->SetRFPowerStateInProgress == true)
		return false;

	priv->SetRFPowerStateInProgress = true;

	btCR9346 = FUNC5(dev, CR9346);
	FUNC7(dev, CR9346, (btCR9346 | 0xC0));

	btConfig3 = FUNC5(dev, CONFIG3);
	FUNC7(dev, CONFIG3, (btConfig3 | CONFIG3_PARM_En));

	switch (priv->rf_chip) {
	case RF_ZEBRA2:
		switch (eRFPowerState) {
		case eRfOn:
			FUNC0(dev,0x4,0x9FF);

			FUNC8(dev, ANAPARAM, ANAPARM_ON);
			FUNC8(dev, ANAPARAM2, ANAPARM2_ON);

			FUNC7(dev, CONFIG4, priv->RFProgType);

			/* turn on CCK and OFDM */
			u1bTmp = FUNC5(dev, 0x24E);
			FUNC7(dev, 0x24E, (u1bTmp & (~(BIT5 | BIT6))));
			break;
		case eRfSleep:
			break;
		case eRfOff:
			break;
		default:
			bResult = false;
			break;
		}
		break;
	case RF_ZEBRA4:
		switch (eRFPowerState) {
		case eRfOn:
			FUNC9(dev, 0x37C, 0x00EC);

			/* turn on AFE */
			FUNC7(dev, 0x54, 0x00);
			FUNC7(dev, 0x62, 0x00);

			/* turn on RF */
			FUNC0(dev, 0x0, 0x009f); FUNC6(500);
			FUNC0(dev, 0x4, 0x0972); FUNC6(500);

			/* turn on RF again */
			FUNC0(dev, 0x0, 0x009f); FUNC6(500);
			FUNC0(dev, 0x4, 0x0972); FUNC6(500);

			/* turn on BB */
			FUNC10(dev,0x10,0x40);
			FUNC10(dev,0x12,0x40);

			/* Avoid power down at init time. */
			FUNC7(dev, CONFIG4, priv->RFProgType);

			u1bTmp = FUNC5(dev, 0x24E);
			FUNC7(dev, 0x24E, (u1bTmp & (~(BIT5 | BIT6))));
			break;
		case eRfSleep:
			for (QueueID = 0, i = 0; QueueID < 6;) {
				if (FUNC1(dev, QueueID) == priv->txringcount) {
					QueueID++;
					continue;
				} else {
					priv->TxPollingTimes ++;
					if (priv->TxPollingTimes >= LPS_MAX_SLEEP_WAITING_TIMES_87SE) {
						bActionAllowed = false;
						break;
					} else
						FUNC6(10);
				}
			}

			if (bActionAllowed) {
				/* turn off BB RXIQ matrix to cut off rx signal */
				FUNC10(dev, 0x10, 0x00);
				FUNC10(dev, 0x12, 0x00);

				/* turn off RF */
				FUNC0(dev, 0x4, 0x0000);
				FUNC0(dev, 0x0, 0x0000);

				/* turn off AFE except PLL */
				FUNC7(dev, 0x62, 0xff);
				FUNC7(dev, 0x54, 0xec);

				FUNC3(1);

				{
					int i = 0;
					while (true) {
						u8 tmp24F = FUNC5(dev, 0x24f);

						if ((tmp24F == 0x01) || (tmp24F == 0x09)) {
							bTurnOffBB = true;
							break;
						} else {
							FUNC6(10);
							i++;
							priv->TxPollingTimes++;

							if (priv->TxPollingTimes >= LPS_MAX_SLEEP_WAITING_TIMES_87SE) {
								bTurnOffBB = false;
								break;
							} else
								FUNC6(10);
						}
					}
				}

				if (bTurnOffBB) {
					/* turn off BB */
					u1bTmp = FUNC5(dev, 0x24E);
					FUNC7(dev, 0x24E, (u1bTmp | BIT5 | BIT6));

					/* turn off AFE PLL */
					FUNC7(dev, 0x54, 0xFC);
					FUNC9(dev, 0x37C, 0x00FC);
				}
			}
			break;
		case eRfOff:
			for (QueueID = 0, i = 0; QueueID < 6;) {
				if (FUNC1(dev, QueueID) == priv->txringcount) {
					QueueID++;
					continue;
				} else {
					FUNC6(10);
					i++;
				}

				if (i >= MAX_DOZE_WAITING_TIMES_85B)
					break;
			}

			/* turn off BB RXIQ matrix to cut off rx signal */
			FUNC10(dev, 0x10, 0x00);
			FUNC10(dev, 0x12, 0x00);

			/* turn off RF */
			FUNC0(dev, 0x4, 0x0000);
			FUNC0(dev, 0x0, 0x0000);

			/* turn off AFE except PLL */
			FUNC7(dev, 0x62, 0xff);
			FUNC7(dev, 0x54, 0xec);

			FUNC3(1);

			{
				int i = 0;

				while (true)
				{
					u8 tmp24F = FUNC5(dev, 0x24f);

					if ((tmp24F == 0x01) || (tmp24F == 0x09)) {
						bTurnOffBB = true;
						break;
					} else {
						bTurnOffBB = false;
						FUNC6(10);
						i++;
					}

					if (i > MAX_POLLING_24F_TIMES_87SE)
						break;
				}
			}

			if (bTurnOffBB) {
				/* turn off BB */
				u1bTmp = FUNC5(dev, 0x24E);
				FUNC7(dev, 0x24E, (u1bTmp | BIT5 | BIT6));

				/* turn off AFE PLL (80M) */
				FUNC7(dev, 0x54, 0xFC);
				FUNC9(dev, 0x37C, 0x00FC);
			}
			break;
		default:
			bResult = false;
			FUNC4("SetZebraRFPowerState8185(): unknow state to set: 0x%X!!!\n", eRFPowerState);
			break;
		}
		break;
	}

	btConfig3 &= ~(CONFIG3_PARM_En);
	FUNC7(dev, CONFIG3, btConfig3);

	btCR9346 &= ~(0xC0);
	FUNC7(dev, CR9346, btCR9346);

	if (bResult && bActionAllowed)
		priv->eRFPowerState = eRFPowerState;

	priv->SetRFPowerStateInProgress = false;

	return bResult && bActionAllowed;
}