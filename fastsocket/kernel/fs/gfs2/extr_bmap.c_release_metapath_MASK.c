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
struct metapath {int /*<<< orphan*/ ** mp_bh; } ;

/* Variables and functions */
 int GFS2_MAX_META_HEIGHT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC1(struct metapath *mp)
{
	int i;

	for (i = 0; i < GFS2_MAX_META_HEIGHT; i++) {
		if (mp->mp_bh[i] == NULL)
			break;
		FUNC0(mp->mp_bh[i]);
	}
}