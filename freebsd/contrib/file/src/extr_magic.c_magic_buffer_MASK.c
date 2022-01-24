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
struct magic_set {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct magic_set*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void const*,size_t) ; 
 char const* FUNC1 (struct magic_set*) ; 
 int FUNC2 (struct magic_set*,int) ; 

const char *
FUNC3(struct magic_set *ms, const void *buf, size_t nb)
{
	if (ms == NULL)
		return NULL;
	if (FUNC2(ms, 1) == -1)
		return NULL;
	/*
	 * The main work is done here!
	 * We have the file name and/or the data buffer to be identified.
	 */
	if (FUNC0(ms, -1, NULL, NULL, buf, nb) == -1) {
		return NULL;
	}
	return FUNC1(ms);
}