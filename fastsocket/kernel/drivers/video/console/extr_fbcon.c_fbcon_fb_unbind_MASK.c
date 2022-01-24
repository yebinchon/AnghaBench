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
 int* con2fb_map ; 
 int /*<<< orphan*/  fbcon_has_console_bind ; 
 int FUNC0 () ; 
 int first_fb_vc ; 
 int last_fb_vc ; 
 int /*<<< orphan*/  FUNC1 (int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(int idx)
{
	int i, new_idx = -1, ret = 0;

	if (!fbcon_has_console_bind)
		return 0;

	for (i = first_fb_vc; i <= last_fb_vc; i++) {
		if (con2fb_map[i] != idx &&
		    con2fb_map[i] != -1) {
			new_idx = i;
			break;
		}
	}

	if (new_idx != -1) {
		for (i = first_fb_vc; i <= last_fb_vc; i++) {
			if (con2fb_map[i] == idx)
				FUNC1(i, new_idx, 0);
		}
	} else
		ret = FUNC0();

	return ret;
}