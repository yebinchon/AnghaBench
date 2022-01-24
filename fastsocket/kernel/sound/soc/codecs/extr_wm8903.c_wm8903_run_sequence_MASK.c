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
struct snd_soc_codec {struct i2c_client* control_data; } ;
struct i2c_client {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  WM8903_WRITE_SEQUENCER_0 ; 
 int /*<<< orphan*/  WM8903_WRITE_SEQUENCER_3 ; 
 int /*<<< orphan*/  WM8903_WRITE_SEQUENCER_4 ; 
 int WM8903_WSEQ_BUSY ; 
 int WM8903_WSEQ_ENA ; 
 unsigned int WM8903_WSEQ_START ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (struct snd_soc_codec*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_soc_codec*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct snd_soc_codec *codec, unsigned int start)
{
	u16 reg[5];
	struct i2c_client *i2c = codec->control_data;

	FUNC0(start > 48);

	/* Enable the sequencer */
	reg[0] = FUNC3(codec, WM8903_WRITE_SEQUENCER_0);
	reg[0] |= WM8903_WSEQ_ENA;
	FUNC4(codec, WM8903_WRITE_SEQUENCER_0, reg[0]);

	FUNC1(&i2c->dev, "Starting sequence at %d\n", start);

	FUNC4(codec, WM8903_WRITE_SEQUENCER_3,
		     start | WM8903_WSEQ_START);

	/* Wait for it to complete.  If we have the interrupt wired up then
	 * we could block waiting for an interrupt, though polling may still
	 * be desirable for diagnostic purposes.
	 */
	do {
		FUNC2(10);

		reg[4] = FUNC3(codec, WM8903_WRITE_SEQUENCER_4);
	} while (reg[4] & WM8903_WSEQ_BUSY);

	FUNC1(&i2c->dev, "Sequence complete\n");

	/* Disable the sequencer again */
	FUNC4(codec, WM8903_WRITE_SEQUENCER_0,
		     reg[0] & ~WM8903_WSEQ_ENA);

	return 0;
}