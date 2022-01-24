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
typedef  int /*<<< orphan*/  journal_t ;

/* Variables and functions */
 int /*<<< orphan*/  JBD2_FEATURE_INCOMPAT_64BIT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 size_t JBD2_TAG_SIZE32 ; 
 size_t JBD2_TAG_SIZE64 ; 

size_t FUNC1(journal_t *journal)
{
	if (FUNC0(journal, JBD2_FEATURE_INCOMPAT_64BIT))
		return JBD2_TAG_SIZE64;
	else
		return JBD2_TAG_SIZE32;
}