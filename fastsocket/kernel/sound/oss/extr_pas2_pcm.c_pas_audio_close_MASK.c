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
 int /*<<< orphan*/  PAS_PCM_INTRBITS ; 
 int /*<<< orphan*/  PCM_NON ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  pas_lock ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ pcm_busy ; 
 int /*<<< orphan*/  pcm_mode ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC6(int dev)
{
	unsigned long   flags;

	FUNC0(FUNC3("pas2_pcm.c: static void pas_audio_close(void)\n"));

	FUNC4(&pas_lock, flags);

	FUNC1(dev);
	FUNC2(PAS_PCM_INTRBITS);
	pcm_mode = PCM_NON;

	pcm_busy = 0;
	FUNC5(&pas_lock, flags);
}