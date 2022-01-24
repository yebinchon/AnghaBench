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
struct platform_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ ** au1xpsc_audio_pcmdma ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct platform_device *pdev)
{
	int i;

	for (i = 0; i < 2; i++) {
		if (au1xpsc_audio_pcmdma[i]) {
			FUNC0(au1xpsc_audio_pcmdma[i]);
			FUNC1(au1xpsc_audio_pcmdma[i]);
			au1xpsc_audio_pcmdma[i] = NULL;
		}
	}

	return 0;
}