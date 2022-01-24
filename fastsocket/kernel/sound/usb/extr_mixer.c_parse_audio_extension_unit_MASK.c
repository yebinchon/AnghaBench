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
struct mixer_build {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct mixer_build*,int,void*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  extunits ; 

__attribute__((used)) static int FUNC1(struct mixer_build *state, int unitid, void *raw_desc)
{
	/* Note that we parse extension units with processing unit descriptors.
	 * That's ok as the layout is the same */
	return FUNC0(state, unitid, raw_desc, extunits, "Extension Unit");
}