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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EBUSY ; 
 int /*<<< orphan*/  PAS_PCM_INTRBITS ; 
 int open_mode ; 
 int /*<<< orphan*/  pas_lock ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int pcm_busy ; 
 scalar_t__ pcm_count ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC5(int dev, int mode)
{
	int             err;
	unsigned long   flags;

	FUNC0(FUNC2("pas2_pcm.c: static int pas_audio_open(int mode = %X)\n", mode));

	FUNC3(&pas_lock, flags);
	if (pcm_busy)
	{
		FUNC4(&pas_lock, flags);
		return -EBUSY;
	}
	pcm_busy = 1;
	FUNC4(&pas_lock, flags);

	if ((err = FUNC1(PAS_PCM_INTRBITS)) < 0)
		return err;


	pcm_count = 0;
	open_mode = mode;

	return 0;
}