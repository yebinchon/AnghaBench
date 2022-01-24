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
typedef  int u32 ;
struct TYPE_2__ {int format; int stereo; int rate; } ;
struct snd_harmony {int /*<<< orphan*/  lock; TYPE_1__ st; } ;

/* Variables and functions */
 int /*<<< orphan*/  HARMONY_CNTL ; 
 int HARMONY_CNTL_C ; 
 int /*<<< orphan*/  FUNC0 (struct snd_harmony*) ; 
 int /*<<< orphan*/  FUNC1 (struct snd_harmony*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void
FUNC4(struct snd_harmony *h)
{
	u32 ctrl;
	unsigned long flags;

	FUNC2(&h->lock, flags);

	ctrl = (HARMONY_CNTL_C      |
		(h->st.format << 6) |
		(h->st.stereo << 5) |
		(h->st.rate));

	FUNC0(h);
	FUNC1(h, HARMONY_CNTL, ctrl);

	FUNC3(&h->lock, flags);
}