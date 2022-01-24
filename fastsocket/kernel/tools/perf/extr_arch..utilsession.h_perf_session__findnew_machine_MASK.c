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
struct machine {int dummy; } ;
struct perf_session {int /*<<< orphan*/  machines; struct machine host_machine; } ;
typedef  scalar_t__ pid_t ;

/* Variables and functions */
 scalar_t__ HOST_KERNEL_ID ; 
 struct machine* FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static inline
struct machine *FUNC1(struct perf_session *self, pid_t pid)
{
	if (pid == HOST_KERNEL_ID)
		return &self->host_machine;
	return FUNC0(&self->machines, pid);
}