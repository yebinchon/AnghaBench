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
typedef  int /*<<< orphan*/  u64 ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  PAGE_SIZE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mlog_and_bits ; 
 int /*<<< orphan*/  mlog_not_bits ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,char*,char*) ; 

__attribute__((used)) static ssize_t FUNC2(u64 mask, char *buf)
{
	char *state;

	if (FUNC0(mask, mlog_and_bits))
		state = "allow";
	else if (FUNC0(mask, mlog_not_bits))
		state = "deny";
	else
		state = "off";

	return FUNC1(buf, PAGE_SIZE, "%s\n", state);
}