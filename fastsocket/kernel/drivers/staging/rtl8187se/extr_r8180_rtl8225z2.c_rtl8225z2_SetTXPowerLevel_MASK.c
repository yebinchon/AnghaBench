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
typedef  char u8 ;
struct r8180_priv {int* chtxpwr; int* chtxpwr_ofdm; scalar_t__ up; int /*<<< orphan*/  ieee80211; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CCK_TXAGC ; 
 char FUNC0 (int /*<<< orphan*/ ,short) ; 
 char FUNC1 (struct r8180_priv*,int /*<<< orphan*/ ,char) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OFDM_TXAGC ; 
 int /*<<< orphan*/  WIRELESS_MODE_B ; 
 int /*<<< orphan*/  WIRELESS_MODE_G ; 
 int /*<<< orphan*/ * ZEBRA2_CCK_OFDM_GAIN_SETTING ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 struct r8180_priv* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*,int,int) ; 

void FUNC9(struct net_device *dev, short ch)
{
	struct r8180_priv *priv = FUNC5(dev);
	u8 max_cck_power_level;
	u8 max_ofdm_power_level;
	u8 min_ofdm_power_level;
	char cck_power_level = (char)(0xff & priv->chtxpwr[ch]);
	char ofdm_power_level = (char)(0xff & priv->chtxpwr_ofdm[ch]);

	if (FUNC2(priv->ieee80211) &&
	    FUNC3(priv->ieee80211)) {
		u8 MaxTxPwrInDbm = FUNC0(priv->ieee80211, ch);
		u8 CckMaxPwrIdx = FUNC1(priv, WIRELESS_MODE_B, MaxTxPwrInDbm);
		u8 OfdmMaxPwrIdx = FUNC1(priv, WIRELESS_MODE_G, MaxTxPwrInDbm);

		if (cck_power_level > CckMaxPwrIdx)
			cck_power_level = CckMaxPwrIdx;
		if (ofdm_power_level > OfdmMaxPwrIdx)
			ofdm_power_level = OfdmMaxPwrIdx;
	}

	max_cck_power_level = 15;
	max_ofdm_power_level = 25;
	min_ofdm_power_level = 10;

	if (cck_power_level > 35)
		cck_power_level = 35;

	FUNC7(dev, CCK_TXAGC,
		       (ZEBRA2_CCK_OFDM_GAIN_SETTING[(u8)cck_power_level]));
	FUNC4(dev);
	FUNC6(1);

	if (ofdm_power_level > 35)
		ofdm_power_level = 35;

	if (priv->up == 0) {
		FUNC8(dev, 2, 0x42);
		FUNC8(dev, 5, 0x00);
		FUNC8(dev, 6, 0x40);
		FUNC8(dev, 7, 0x00);
		FUNC8(dev, 8, 0x40);
	}

	FUNC7(dev, OFDM_TXAGC,
		       ZEBRA2_CCK_OFDM_GAIN_SETTING[(u8)ofdm_power_level]);

	if (ofdm_power_level <= 11) {
		FUNC8(dev, 0x07, 0x5c);
		FUNC8(dev, 0x09, 0x5c);
        }

	if (ofdm_power_level <= 17) {
		FUNC8(dev, 0x07, 0x54);
		FUNC8(dev, 0x09, 0x54);
	} else {
		FUNC8(dev, 0x07, 0x50);
		FUNC8(dev, 0x09, 0x50);
	}

	FUNC4(dev);
	FUNC6(1);
}