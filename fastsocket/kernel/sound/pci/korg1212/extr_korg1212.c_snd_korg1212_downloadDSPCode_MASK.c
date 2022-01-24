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
struct TYPE_2__ {int /*<<< orphan*/  addr; } ;
struct snd_korg1212 {size_t cardState; scalar_t__ dsp_is_loaded; int /*<<< orphan*/  wait; TYPE_1__ dma_dsp; } ;

/* Variables and functions */
 int CARD_BOOT_TIMEOUT ; 
 int EBUSY ; 
 int HZ ; 
 int /*<<< orphan*/  K1212_DB_StartDSPDownload ; 
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 
 size_t K1212_STATE_DSP_IN_PROCESS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct snd_korg1212*) ; 
 int FUNC3 (struct snd_korg1212*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct snd_korg1212*,size_t) ; 
 int /*<<< orphan*/ * stateName ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__,int) ; 

__attribute__((used)) static int FUNC6(struct snd_korg1212 *korg1212)
{
	int rc;

        FUNC0("K1212_DEBUG: DSP download is starting... [%s]\n",
			   stateName[korg1212->cardState]);

        // ---------------------------------------------------------------
        // verify the state of the card before proceeding.
        // ---------------------------------------------------------------
        if (korg1212->cardState >= K1212_STATE_DSP_IN_PROCESS)
                return 1;

        FUNC4(korg1212, K1212_STATE_DSP_IN_PROCESS);

        rc = FUNC3(korg1212, K1212_DB_StartDSPDownload,
                                     FUNC1(korg1212->dma_dsp.addr),
                                     0, 0, 0);
	if (rc)
		FUNC0("K1212_DEBUG: Start DSP Download RC = %d [%s]\n",
				   rc, stateName[korg1212->cardState]);

	korg1212->dsp_is_loaded = 0;
	FUNC5(korg1212->wait, korg1212->dsp_is_loaded, HZ * CARD_BOOT_TIMEOUT);
	if (! korg1212->dsp_is_loaded )
		return -EBUSY; /* timeout */

	FUNC2(korg1212);

        return 0;
}