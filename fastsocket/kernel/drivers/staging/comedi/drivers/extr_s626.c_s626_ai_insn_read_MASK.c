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
typedef  int uint32_t ;
typedef  scalar_t__ uint16_t ;
struct comedi_subdevice {int dummy; } ;
struct comedi_insn {int n; int /*<<< orphan*/  chanspec; } ;
struct comedi_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct comedi_device*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int GPIO1_HI ; 
 scalar_t__ GSEL_BIPOLAR10V ; 
 scalar_t__ GSEL_BIPOLAR5V ; 
 int /*<<< orphan*/  LP_GSEL ; 
 int /*<<< orphan*/  LP_ISEL ; 
 int PSR_GPIO2 ; 
 int /*<<< orphan*/  P_FB_BUFFER1 ; 
 int /*<<< orphan*/  P_GPIO ; 
 int /*<<< orphan*/  P_PSR ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 unsigned int FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static int FUNC8(struct comedi_device *dev,
			     struct comedi_subdevice *s,
			     struct comedi_insn *insn, unsigned int *data)
{
	uint16_t chan = FUNC0(insn->chanspec);
	uint16_t range = FUNC1(insn->chanspec);
	uint16_t AdcSpec = 0;
	uint32_t GpioImage;
	int n;

	/* interrupt call test  */
/*   writel(IRQ_GPIO3,devpriv->base_addr+P_PSR); */
	/* Writing a logical 1 into any of the RPS_PSR bits causes the
	 * corresponding interrupt to be generated if enabled
	 */

	FUNC3("s626_ai_insn_read: entering\n");

	/* Convert application's ADC specification into form
	 *  appropriate for register programming.
	 */
	if (range == 0)
		AdcSpec = (chan << 8) | (GSEL_BIPOLAR5V);
	else
		AdcSpec = (chan << 8) | (GSEL_BIPOLAR10V);

	/*  Switch ADC analog gain. */
	FUNC2(dev, LP_GSEL, AdcSpec);	/*  Set gain. */

	/*  Select ADC analog input channel. */
	FUNC2(dev, LP_ISEL, AdcSpec);	/*  Select channel. */

	for (n = 0; n < insn->n; n++) {

		/*  Delay 10 microseconds for analog input settling. */
		FUNC7(10);

		/*  Start ADC by pulsing GPIO1 low. */
		GpioImage = FUNC4(P_GPIO);
		/*  Assert ADC Start command */
		FUNC5(P_GPIO, GpioImage & ~GPIO1_HI);
		/*    and stretch it out. */
		FUNC5(P_GPIO, GpioImage & ~GPIO1_HI);
		FUNC5(P_GPIO, GpioImage & ~GPIO1_HI);
		/*  Negate ADC Start command. */
		FUNC5(P_GPIO, GpioImage | GPIO1_HI);

		/*  Wait for ADC to complete (GPIO2 is asserted high when */
		/*  ADC not busy) and for data from previous conversion to */
		/*  shift into FB BUFFER 1 register. */

		/*  Wait for ADC done. */
		while (!(FUNC4(P_PSR) & PSR_GPIO2)) ;

		/*  Fetch ADC data. */
		if (n != 0)
			data[n - 1] = FUNC6(FUNC4(P_FB_BUFFER1));

		/* Allow the ADC to stabilize for 4 microseconds before
		 * starting the next (final) conversion.  This delay is
		 * necessary to allow sufficient time between last
		 * conversion finished and the start of the next
		 * conversion.  Without this delay, the last conversion's
		 * data value is sometimes set to the previous
		 * conversion's data value.
		 */
		FUNC7(4);
	}

	/* Start a dummy conversion to cause the data from the
	 * previous conversion to be shifted in. */
	GpioImage = FUNC4(P_GPIO);

	/* Assert ADC Start command */
	FUNC5(P_GPIO, GpioImage & ~GPIO1_HI);
	/*    and stretch it out. */
	FUNC5(P_GPIO, GpioImage & ~GPIO1_HI);
	FUNC5(P_GPIO, GpioImage & ~GPIO1_HI);
	/*  Negate ADC Start command. */
	FUNC5(P_GPIO, GpioImage | GPIO1_HI);

	/*  Wait for the data to arrive in FB BUFFER 1 register. */

	/*  Wait for ADC done. */
	while (!(FUNC4(P_PSR) & PSR_GPIO2)) ;

	/*  Fetch ADC data from audio interface's input shift register. */

	/*  Fetch ADC data. */
	if (n != 0)
		data[n - 1] = FUNC6(FUNC4(P_FB_BUFFER1));

	FUNC3("s626_ai_insn_read: samples %d, data %d\n", n, data[n - 1]);

	return n;
}