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
struct r8180_priv {int* chtxpwr; int* chtxpwr_ofdm; scalar_t__ card_type; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RTL8225_ANAPARAM2_ON ; 
 int /*<<< orphan*/  TX_GAIN_CCK ; 
 int /*<<< orphan*/  TX_GAIN_OFDM ; 
 scalar_t__ USB ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 struct r8180_priv* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*,int /*<<< orphan*/ ) ; 
 int* rtl8225_tx_gain_cck_ofdm ; 
 int* rtl8225_tx_power_cck ; 
 int* rtl8225_tx_power_cck_ch14 ; 
 int* rtl8225_tx_power_ofdm ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*,int,int) ; 

__attribute__((used)) static void FUNC7(struct net_device *dev, short ch)
{
	struct r8180_priv *priv = FUNC1(dev);
	int GainIdx;
	int GainSetting;
	int i;
	u8 power;
	const u8 *cck_power_table;
	u8 max_cck_power_level;
	u8 max_ofdm_power_level;
	u8 min_ofdm_power_level;
	u8 cck_power_level = 0xff & priv->chtxpwr[ch];
	u8 ofdm_power_level = 0xff & priv->chtxpwr_ofdm[ch];

	if (priv->card_type == USB) {
		max_cck_power_level = 11;
		max_ofdm_power_level = 25;
		min_ofdm_power_level = 10;
	} else {
		max_cck_power_level = 35;
		max_ofdm_power_level = 35;
		min_ofdm_power_level = 0;
	}

	if (cck_power_level > max_cck_power_level)
		cck_power_level = max_cck_power_level;

	GainIdx = cck_power_level % 6;
	GainSetting = cck_power_level / 6;

	if (ch == 14)
		cck_power_table = rtl8225_tx_power_cck_ch14;
	else
		cck_power_table = rtl8225_tx_power_cck;

	FUNC4(dev, TX_GAIN_CCK,
		       rtl8225_tx_gain_cck_ofdm[GainSetting] >> 1);

	for (i = 0; i < 8; i++) {
		power = cck_power_table[GainIdx * 8 + i];
		FUNC5(dev, 0x44 + i, power);
	}

	/* FIXME Is this delay really needeed ? */
	FUNC0(dev);
	FUNC2(1);

	if (ofdm_power_level > (max_ofdm_power_level - min_ofdm_power_level))
		ofdm_power_level = max_ofdm_power_level;
	else
		ofdm_power_level += min_ofdm_power_level;

	if (ofdm_power_level > 35)
		ofdm_power_level = 35;

	GainIdx = ofdm_power_level % 6;
	GainSetting = ofdm_power_level / 6;

	FUNC3(dev, RTL8225_ANAPARAM2_ON);

	FUNC6(dev, 2, 0x42);
	FUNC6(dev, 6, 0x00);
	FUNC6(dev, 8, 0x00);

	FUNC4(dev, TX_GAIN_OFDM,
		       rtl8225_tx_gain_cck_ofdm[GainSetting] >> 1);

	power = rtl8225_tx_power_ofdm[GainIdx];

	FUNC6(dev, 5, power);
	FUNC6(dev, 7, power);

	FUNC0(dev);
	FUNC2(1);
}