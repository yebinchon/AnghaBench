#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int sample_number; int sample_msb; } ;
typedef  TYPE_1__ wavefront_patch ;
struct TYPE_6__ {int* patch_status; int* sample_status; } ;
typedef  TYPE_2__ snd_wavefront_t ;

/* Variables and functions */
 int /*<<< orphan*/  WFC_UPLOAD_PATCH ; 
 int WF_MAX_PATCH ; 
 int WF_PATCH_BYTES ; 
 int WF_SLOT_FILLED ; 
 int WF_SLOT_USED ; 
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 
 int FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,unsigned char*,unsigned char*) ; 

__attribute__((used)) static int
FUNC2 (snd_wavefront_t *dev)

{
	unsigned char patchbuf[WF_PATCH_BYTES];
	unsigned char patchnum[2];
	wavefront_patch *p;
	int i, x, cnt, cnt2;

	for (i = 0; i < WF_MAX_PATCH; i++) {
		patchnum[0] = i & 0x7f;
		patchnum[1] = i >> 7;

		if ((x = FUNC1 (dev, WFC_UPLOAD_PATCH, patchbuf,
					patchnum)) == 0) {

			dev->patch_status[i] |= WF_SLOT_FILLED;
			p = (wavefront_patch *) patchbuf;
			dev->sample_status
				[p->sample_number|(p->sample_msb<<7)] |=
				WF_SLOT_USED;
	    
		} else if (x == 3) { /* Bad patch number */
			dev->patch_status[i] = 0;
		} else {
			FUNC0 ("upload patch "
				    "error 0x%x\n", x);
			dev->patch_status[i] = 0;
			return 1;
		}
	}

	/* program status has already filled in slot_used bits */

	for (i = 0, cnt = 0, cnt2 = 0; i < WF_MAX_PATCH; i++) {
		if (dev->patch_status[i] & WF_SLOT_FILLED) {
			cnt++;
		}
		if (dev->patch_status[i] & WF_SLOT_USED) {
			cnt2++;
		}
	
	}
	FUNC0 ("%d patch slots filled, %d in use\n", cnt, cnt2);

	return (0);
}