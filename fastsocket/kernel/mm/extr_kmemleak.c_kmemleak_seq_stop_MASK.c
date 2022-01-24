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
struct seq_file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  scan_mutex ; 

__attribute__((used)) static void FUNC4(struct seq_file *seq, void *v)
{
	if (!FUNC0(v)) {
		/*
		 * kmemleak_seq_start may return ERR_PTR if the scan_mutex
		 * waiting was interrupted, so only release it if !IS_ERR.
		 */
		FUNC3();
		FUNC1(&scan_mutex);
		if (v)
			FUNC2(v);
	}
}