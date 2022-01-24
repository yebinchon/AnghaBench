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
struct ev_log {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct ev_log*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ev_log_ops ; 

__attribute__((used)) static int FUNC1(struct ev_log *log)
{
	FUNC0(log->name, 0444, 0, log, &ev_log_ops);
	return 0;
}