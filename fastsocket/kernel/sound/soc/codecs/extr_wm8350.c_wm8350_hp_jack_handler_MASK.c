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
typedef  int u16 ;
struct wm8350_jack_data {int report; int /*<<< orphan*/  jack; } ;
struct wm8350_data {struct wm8350_jack_data hpr; struct wm8350_jack_data hpl; } ;
struct wm8350 {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
#define  WM8350_IRQ_CODEC_JCK_DET_L 129 
#define  WM8350_IRQ_CODEC_JCK_DET_R 128 
 int WM8350_JACK_L_LVL ; 
 int /*<<< orphan*/  WM8350_JACK_PIN_STATUS ; 
 int WM8350_JACK_R_LVL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int) ; 
 int FUNC4 (struct wm8350*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct wm8350 *wm8350, int irq, void *data)
{
	struct wm8350_data *priv = data;
	u16 reg;
	int report;
	int mask;
	struct wm8350_jack_data *jack = NULL;

	switch (irq) {
	case WM8350_IRQ_CODEC_JCK_DET_L:
		jack = &priv->hpl;
		mask = WM8350_JACK_L_LVL;
		break;

	case WM8350_IRQ_CODEC_JCK_DET_R:
		jack = &priv->hpr;
		mask = WM8350_JACK_R_LVL;
		break;

	default:
		FUNC0();
	}

	if (!jack->jack) {
		FUNC1(wm8350->dev, "Jack interrupt called with no jack\n");
		return;
	}

	/* Debounce */
	FUNC2(200);

	reg = FUNC4(wm8350, WM8350_JACK_PIN_STATUS);
	if (reg & mask)
		report = jack->report;
	else
		report = 0;

	FUNC3(jack->jack, report, jack->report);
}