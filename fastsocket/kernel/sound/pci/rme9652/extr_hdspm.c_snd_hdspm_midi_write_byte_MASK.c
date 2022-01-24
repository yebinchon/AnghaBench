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
struct hdspm {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  HDSPM_midiDataOut0 ; 
 int /*<<< orphan*/  HDSPM_midiDataOut1 ; 
 int /*<<< orphan*/  FUNC0 (struct hdspm*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static inline void FUNC1 (struct hdspm *hdspm, int id,
					      int val)
{
	/* the hardware already does the relevant bit-mask with 0xff */
	if (id)
		FUNC0(hdspm, HDSPM_midiDataOut1, val);
	else
		FUNC0(hdspm, HDSPM_midiDataOut0, val);
}