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
struct blacklist {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct blacklist*,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 

int
FUNC1(struct blacklist *bl, int action, int rfd, const char *msg)
{
	return FUNC0(bl, action, rfd, NULL, 0, msg);
}