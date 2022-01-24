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
struct TYPE_2__ {char const* name; int id; } ;

/* Variables and functions */
 TYPE_1__* curves ; 

const char *
FUNC0(int id)
{
	size_t u;

	for (u = 0; curves[u].name; u ++) {
		if (curves[u].id == id) {
			return curves[u].name;
		}
	}
	return NULL;
}