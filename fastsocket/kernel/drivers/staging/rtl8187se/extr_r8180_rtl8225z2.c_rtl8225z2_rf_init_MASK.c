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
typedef  int /*<<< orphan*/  u16 ;
struct r8180_priv {short chan; scalar_t__ card_type; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BRSR ; 
 int CONFIG3 ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  EPROM_CMD_CONFIG ; 
 int /*<<< orphan*/  EPROM_CMD_NORMAL ; 
 int RF_PARA ; 
 int RF_TIMING ; 
 scalar_t__ USB ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 struct r8180_priv* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*,int) ; 
 int* rtl8225_agc ; 
 int* rtl8225_chan ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*,short) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*,short) ; 
 int* rtl8225z2_rxgain ; 
 int /*<<< orphan*/  FUNC12 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct net_device*,int,int) ; 
 int /*<<< orphan*/  FUNC14 (struct net_device*,int,int) ; 
 int /*<<< orphan*/  FUNC15 (struct net_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC16 (struct net_device*,int,int) ; 
 int /*<<< orphan*/  FUNC17 (struct net_device*,int,int) ; 
 int /*<<< orphan*/  FUNC18 (struct net_device*,int,int) ; 

void FUNC19(struct net_device *dev)
{
	struct r8180_priv *priv = FUNC2(dev);
	int i;
	short channel = 1;
	u16	brsr;
	u32	data,addr;

	priv->chan = channel;

	if (priv->card_type != USB)
		FUNC9(dev);

	FUNC14(dev, RF_TIMING, 0x000a8008);

	brsr = FUNC4(dev, BRSR);

	FUNC15(dev, BRSR, 0xffff);

	FUNC14(dev, RF_PARA, 0x100044);

	FUNC6(dev, EPROM_CMD_CONFIG);
	FUNC13(dev, CONFIG3, 0x44);
	FUNC6(dev, EPROM_CMD_NORMAL);

	FUNC7(dev);

	FUNC18(dev, 0x0, 0x2bf); FUNC3(1);
	FUNC18(dev, 0x1, 0xee0); FUNC3(1);
	FUNC18(dev, 0x2, 0x44d); FUNC3(1);
	FUNC18(dev, 0x3, 0x441); FUNC3(1);
	FUNC18(dev, 0x4, 0x8c3); FUNC3(1);
	FUNC18(dev, 0x5, 0xc72); FUNC3(1);
	FUNC18(dev, 0x6, 0xe6);  FUNC3(1);
	FUNC18(dev, 0x7, ((priv->card_type == USB)? 0x82a : rtl8225_chan[channel]));  FUNC3(1);
	FUNC18(dev, 0x8, 0x3f);  FUNC3(1);
	FUNC18(dev, 0x9, 0x335); FUNC3(1);
	FUNC18(dev, 0xa, 0x9d4); FUNC3(1);
	FUNC18(dev, 0xb, 0x7bb); FUNC3(1);
	FUNC18(dev, 0xc, 0x850); FUNC3(1);
	FUNC18(dev, 0xd, 0xcdf); FUNC3(1);
	FUNC18(dev, 0xe, 0x2b);  FUNC3(1);
	FUNC18(dev, 0xf, 0x114);

	FUNC3(100);

	FUNC18(dev, 0x0, 0x1b7);

	for (i = 0; i < 95; i++) {
		FUNC18(dev, 0x1, (u8)(i + 1));
		FUNC18(dev, 0x2, rtl8225z2_rxgain[i]);
	}

	FUNC18(dev, 0x3, 0x80);
	FUNC18(dev, 0x5, 0x4);

	FUNC18(dev, 0x0, 0xb7);

	FUNC18(dev, 0x2, 0xc4d);

	if (priv->card_type == USB) {
		FUNC3(200);

		FUNC18(dev, 0x2, 0x44d);
		FUNC3(100);
	}

	/* FIXME!! rtl8187 we have to check if calibrarion
	 * is successful and eventually cal. again (repeat
	 * the two write on reg 2)
	 */
	data = FUNC5(dev, 6);
	if (!(data & 0x00000080)) {
		FUNC18(dev, 0x02, 0x0c4d);
		FUNC1(dev); FUNC3(200);
		FUNC18(dev, 0x02, 0x044d);
		FUNC1(dev); FUNC3(100);
		data = FUNC5(dev, 6);
		if (!(data & 0x00000080))
			FUNC0("RF Calibration Failed!!!!\n");
	}

	FUNC3(200);

	FUNC18(dev, 0x0, 0x2bf);

	if (priv->card_type != USB)
		FUNC7(dev);

	for (i = 0; i < 128; i++) {
		data = rtl8225_agc[i];

		addr = i + 0x80; /* enable writing AGC table */
		FUNC17(dev, 0xb, data);
		FUNC3(1);

		FUNC17(dev, 0xa, addr);
		FUNC3(1);
	}

	FUNC1(dev);
	FUNC3(1);

	FUNC17(dev, 0x00, 0x01); FUNC3(1);
	FUNC17(dev, 0x01, 0x02); FUNC3(1);
	FUNC17(dev, 0x02, ((priv->card_type == USB) ? 0x42 : 0x62)); FUNC3(1);
	FUNC17(dev, 0x03, 0x00); FUNC3(1);
	FUNC17(dev, 0x04, 0x00); FUNC3(1);
	FUNC17(dev, 0x05, 0x00); FUNC3(1);
	FUNC17(dev, 0x06, 0x40); FUNC3(1);
	FUNC17(dev, 0x07, 0x00); FUNC3(1);
	FUNC17(dev, 0x08, 0x40); FUNC3(1);
	FUNC17(dev, 0x09, 0xfe); FUNC3(1);
	FUNC17(dev, 0x0a, 0x08); FUNC3(1);
	FUNC17(dev, 0x0b, 0x80); FUNC3(1);
	FUNC17(dev, 0x0c, 0x01); FUNC3(1);
	FUNC17(dev, 0x0d, 0x43);
	FUNC17(dev, 0x0e, 0xd3); FUNC3(1);
	FUNC17(dev, 0x0f, 0x38); FUNC3(1);
	FUNC17(dev, 0x10, 0x84); FUNC3(1);
	FUNC17(dev, 0x11, 0x07); FUNC3(1);
	FUNC17(dev, 0x12, 0x20); FUNC3(1);
	FUNC17(dev, 0x13, 0x20); FUNC3(1);
	FUNC17(dev, 0x14, 0x00); FUNC3(1);
	FUNC17(dev, 0x15, 0x40); FUNC3(1);
	FUNC17(dev, 0x16, 0x00); FUNC3(1);
	FUNC17(dev, 0x17, 0x40); FUNC3(1);
	FUNC17(dev, 0x18, 0xef); FUNC3(1);
	FUNC17(dev, 0x19, 0x19); FUNC3(1);
	FUNC17(dev, 0x1a, 0x20); FUNC3(1);
	FUNC17(dev, 0x1b, 0x15); FUNC3(1);
	FUNC17(dev, 0x1c, 0x04); FUNC3(1);
	FUNC17(dev, 0x1d, 0xc5); FUNC3(1);
	FUNC17(dev, 0x1e, 0x95); FUNC3(1);
	FUNC17(dev, 0x1f, 0x75); FUNC3(1);
	FUNC17(dev, 0x20, 0x1f); FUNC3(1);
	FUNC17(dev, 0x21, 0x17); FUNC3(1);
	FUNC17(dev, 0x22, 0x16); FUNC3(1);
	FUNC17(dev, 0x23, 0x80); FUNC3(1); /* FIXME maybe not needed */
	FUNC17(dev, 0x24, 0x46); FUNC3(1);
	FUNC17(dev, 0x25, 0x00); FUNC3(1);
	FUNC17(dev, 0x26, 0x90); FUNC3(1);
	FUNC17(dev, 0x27, 0x88); FUNC3(1);

	FUNC12(dev,4);

	FUNC16(dev, 0x0, 0x98); FUNC3(1);
	FUNC16(dev, 0x3, 0x20); FUNC3(1);
	FUNC16(dev, 0x4, 0x7e); FUNC3(1);
	FUNC16(dev, 0x5, 0x12); FUNC3(1);
	FUNC16(dev, 0x6, 0xfc); FUNC3(1);
	FUNC16(dev, 0x7, 0x78); FUNC3(1);
	FUNC16(dev, 0x8, 0x2e); FUNC3(1);
	FUNC16(dev, 0x10, ((priv->card_type == USB) ? 0x9b: 0x93)); FUNC3(1);
	FUNC16(dev, 0x11, 0x88); FUNC3(1);
	FUNC16(dev, 0x12, 0x47); FUNC3(1);
	FUNC16(dev, 0x13, 0xd0);
	FUNC16(dev, 0x19, 0x00);
	FUNC16(dev, 0x1a, 0xa0);
	FUNC16(dev, 0x1b, 0x08);
	FUNC16(dev, 0x40, 0x86); /* CCK Carrier Sense Threshold */
	FUNC16(dev, 0x41, 0x8d); FUNC3(1);
	FUNC16(dev, 0x42, 0x15); FUNC3(1);
	FUNC16(dev, 0x43, 0x18); FUNC3(1);
	FUNC16(dev, 0x44, 0x36); FUNC3(1);
	FUNC16(dev, 0x45, 0x35); FUNC3(1);
	FUNC16(dev, 0x46, 0x2e); FUNC3(1);
	FUNC16(dev, 0x47, 0x25); FUNC3(1);
	FUNC16(dev, 0x48, 0x1c); FUNC3(1);
	FUNC16(dev, 0x49, 0x12); FUNC3(1);
	FUNC16(dev, 0x4a, 0x09); FUNC3(1);
	FUNC16(dev, 0x4b, 0x04); FUNC3(1);
	FUNC16(dev, 0x4c, 0x05); FUNC3(1);

	FUNC13(dev, 0x5b, 0x0d); FUNC3(1);

	FUNC11(dev, channel);

	/* RX antenna default to A */
	FUNC16(dev, 0x11, 0x9b); FUNC3(1);		/* B: 0xDB */
	FUNC17(dev, 0x26, 0x90); FUNC3(1);		/* B: 0x10 */

	FUNC8(dev, 0x03);				/* B: 0x00 */

	/* switch to high-speed 3-wire
	 * last digit. 2 for both cck and ofdm
	 */
	if (priv->card_type == USB)
		FUNC14(dev, 0x94, 0x3dc00002);
	else {
		FUNC14(dev, 0x94, 0x15c00002);
		FUNC7(dev);
	}

	FUNC10(dev, priv->chan);
}