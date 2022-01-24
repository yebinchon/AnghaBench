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
struct voice {int flags; TYPE_1__* timing; } ;
struct sis7019 {int /*<<< orphan*/  voice_lock; } ;
struct TYPE_2__ {int flags; } ;

/* Variables and functions */
 int VOICE_IN_USE ; 
 int VOICE_SSO_TIMING ; 
 int VOICE_SYNC_TIMING ; 
 int /*<<< orphan*/  FUNC0 (struct sis7019*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC3(struct sis7019 *sis, struct voice *voice)
{
	unsigned long flags;

	FUNC1(&sis->voice_lock, flags);
	if (voice->timing) {
		FUNC0(sis);
		voice->timing->flags &= ~(VOICE_IN_USE | VOICE_SSO_TIMING |
						VOICE_SYNC_TIMING);
		voice->timing = NULL;
	}
	voice->flags &= ~(VOICE_IN_USE | VOICE_SSO_TIMING | VOICE_SYNC_TIMING);
	FUNC2(&sis->voice_lock, flags);
}