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
struct process_filter {int pid; struct process_filter* next; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 struct process_filter* FUNC0 (int) ; 
 struct process_filter* process_filter ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int FUNC2 (char const*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC3(const char *string)
{
	int pid = FUNC2(string, NULL, 10);
	struct process_filter *filt = FUNC0(sizeof(*filt));

	if (!filt)
		return;

	filt->name = FUNC1(string);
	filt->pid  = pid;
	filt->next = process_filter;

	process_filter = filt;
}