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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SuffPrintSuff ; 
 int /*<<< orphan*/  SuffPrintTrans ; 
 int /*<<< orphan*/  debug_file ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  sufflist ; 
 int /*<<< orphan*/  transforms ; 

void
FUNC2(void)
{
    FUNC1(debug_file, "#*** Suffixes:\n");
    FUNC0(sufflist, SuffPrintSuff, NULL);

    FUNC1(debug_file, "#*** Transformations:\n");
    FUNC0(transforms, SuffPrintTrans, NULL);
}