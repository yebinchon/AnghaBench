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
typedef  int u16 ;
struct r8180_priv {scalar_t__ card_type; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int BB_HOST_BANG_CLK ; 
 int BB_HOST_BANG_EN ; 
 int /*<<< orphan*/  RFPinsEnable ; 
 int /*<<< orphan*/  RFPinsOutput ; 
 int /*<<< orphan*/  RFPinsSelect ; 
 int SW_CONTROL_GPIO ; 
 scalar_t__ USB ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 struct r8180_priv* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC7(struct net_device *dev, u8 adr, u16 data)
{
	int i;
	u16 out, select;
	u8 bit;
	u32 bangdata = (data << 4) | (adr & 0xf);
	struct r8180_priv *priv = FUNC1(dev);

	out = FUNC3(dev, RFPinsOutput) & 0xfff3;

	FUNC6(dev, RFPinsEnable,
		(FUNC3(dev, RFPinsEnable) | 0x7));

	select = FUNC3(dev, RFPinsSelect);

	FUNC6(dev, RFPinsSelect, select | 0x7 |
		((priv->card_type == USB) ? 0 : SW_CONTROL_GPIO));

	FUNC0(dev);
	FUNC5(10);

	FUNC6(dev, RFPinsOutput, out | BB_HOST_BANG_EN);

	FUNC0(dev);
	FUNC5(2);

	FUNC6(dev, RFPinsOutput, out);

	FUNC0(dev);
	FUNC5(10);

	for (i = 15; i >= 0; i--) {
		bit = (bangdata & (1 << i)) >> i;

		FUNC6(dev, RFPinsOutput, bit | out);

		FUNC6(dev, RFPinsOutput, bit | out | BB_HOST_BANG_CLK);
		FUNC6(dev, RFPinsOutput, bit | out | BB_HOST_BANG_CLK);

		i--;
		bit = (bangdata & (1 << i)) >> i;

		FUNC6(dev, RFPinsOutput, bit | out | BB_HOST_BANG_CLK);
		FUNC6(dev, RFPinsOutput, bit | out | BB_HOST_BANG_CLK);

		FUNC6(dev, RFPinsOutput, bit | out);

	}

	FUNC6(dev, RFPinsOutput, out | BB_HOST_BANG_EN);

	FUNC0(dev);
	FUNC5(10);

	FUNC6(dev, RFPinsOutput, out |
		((priv->card_type == USB) ? 4 : BB_HOST_BANG_EN));

	FUNC6(dev, RFPinsSelect, select |
		((priv->card_type == USB) ? 0 : SW_CONTROL_GPIO));

	if (priv->card_type == USB)
		FUNC2(2);
	else
		FUNC4(dev);
}