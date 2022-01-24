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
struct ak4114 {TYPE_1__** kctls; int /*<<< orphan*/  card; } ;
struct TYPE_2__ {int /*<<< orphan*/  id; } ;

/* Variables and functions */
 unsigned char AK4114_AUDION ; 
 unsigned char AK4114_AUTO ; 
 unsigned char AK4114_CCRC ; 
 unsigned char AK4114_CINT ; 
 unsigned char AK4114_DTSCD ; 
 unsigned char AK4114_PAR ; 
 unsigned char AK4114_PEM ; 
 unsigned char AK4114_QCRC ; 
 unsigned char AK4114_QINT ; 
 unsigned char AK4114_UNLCK ; 
 unsigned char AK4114_V ; 
 int /*<<< orphan*/  SNDRV_CTL_EVENT_MASK_VALUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1(struct ak4114 *ak4114,
			  unsigned char rcs0, unsigned char rcs1,
			  unsigned char c0, unsigned char c1)
{
	if (!ak4114->kctls[0])
		return;

	if (rcs0 & AK4114_PAR)
		FUNC0(ak4114->card, SNDRV_CTL_EVENT_MASK_VALUE,
			       &ak4114->kctls[0]->id);
	if (rcs0 & AK4114_V)
		FUNC0(ak4114->card, SNDRV_CTL_EVENT_MASK_VALUE,
			       &ak4114->kctls[1]->id);
	if (rcs1 & AK4114_CCRC)
		FUNC0(ak4114->card, SNDRV_CTL_EVENT_MASK_VALUE,
			       &ak4114->kctls[2]->id);
	if (rcs1 & AK4114_QCRC)
		FUNC0(ak4114->card, SNDRV_CTL_EVENT_MASK_VALUE,
			       &ak4114->kctls[3]->id);

	/* rate change */
	if (c1 & 0xf0)
		FUNC0(ak4114->card, SNDRV_CTL_EVENT_MASK_VALUE,
			       &ak4114->kctls[4]->id);

	if ((c0 & AK4114_PEM) | (c0 & AK4114_CINT))
		FUNC0(ak4114->card, SNDRV_CTL_EVENT_MASK_VALUE,
			       &ak4114->kctls[9]->id);
	if (c0 & AK4114_QINT)
		FUNC0(ak4114->card, SNDRV_CTL_EVENT_MASK_VALUE,
			       &ak4114->kctls[10]->id);

	if (c0 & AK4114_AUDION)
		FUNC0(ak4114->card, SNDRV_CTL_EVENT_MASK_VALUE,
			       &ak4114->kctls[11]->id);
	if (c0 & AK4114_AUTO)
		FUNC0(ak4114->card, SNDRV_CTL_EVENT_MASK_VALUE,
			       &ak4114->kctls[12]->id);
	if (c0 & AK4114_DTSCD)
		FUNC0(ak4114->card, SNDRV_CTL_EVENT_MASK_VALUE,
			       &ak4114->kctls[13]->id);
	if (c0 & AK4114_UNLCK)
		FUNC0(ak4114->card, SNDRV_CTL_EVENT_MASK_VALUE,
			       &ak4114->kctls[14]->id);
}