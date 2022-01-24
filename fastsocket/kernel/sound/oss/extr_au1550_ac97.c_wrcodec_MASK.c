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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
typedef  scalar_t__ u16 ;
struct au1550_state {int /*<<< orphan*/  lock; } ;
struct ac97_codec {scalar_t__ private_data; } ;

/* Variables and functions */
 int POLL_COUNT ; 
 int /*<<< orphan*/  PSC_AC97CDC ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PSC_AC97EVNT ; 
 int PSC_AC97EVNT_CD ; 
 int /*<<< orphan*/  PSC_AC97STAT ; 
 int PSC_AC97STAT_CP ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void
FUNC7(struct ac97_codec *codec, u8 addr, u16 data)
{
	struct au1550_state *s = (struct au1550_state *)codec->private_data;
	unsigned long   flags;
	u32             cmd, val;
	int             i;

	FUNC5(&s->lock, flags);

	for (i = 0; i < POLL_COUNT; i++) {
		val = FUNC1(PSC_AC97STAT);
		FUNC2();
		if (!(val & PSC_AC97STAT_CP))
			break;
	}
	if (i == POLL_COUNT)
		FUNC4("wrcodec: codec cmd pending expired!");

	cmd = (u32)FUNC0(addr);
	cmd |= (u32)data;
	FUNC3(cmd, PSC_AC97CDC);
	FUNC2();

	for (i = 0; i < POLL_COUNT; i++) {
		val = FUNC1(PSC_AC97STAT);
		FUNC2();
		if (!(val & PSC_AC97STAT_CP))
			break;
	}
	if (i == POLL_COUNT)
		FUNC4("wrcodec: codec cmd pending expired!");

	for (i = 0; i < POLL_COUNT; i++) {
		val = FUNC1(PSC_AC97EVNT);
		FUNC2();
		if (val & PSC_AC97EVNT_CD)
			break;
	}
	if (i == POLL_COUNT)
		FUNC4("wrcodec: read cmdwait expired!");

	/* Clear command done event.
	*/
	FUNC3(PSC_AC97EVNT_CD, PSC_AC97EVNT);
	FUNC2();

	FUNC6(&s->lock, flags);
}