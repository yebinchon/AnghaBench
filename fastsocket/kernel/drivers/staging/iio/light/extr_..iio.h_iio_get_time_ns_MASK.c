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
struct timespec {int dummy; } ;
typedef  int /*<<< orphan*/  s64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct timespec*) ; 
 int /*<<< orphan*/  FUNC1 (struct timespec*) ; 

__attribute__((used)) static inline s64 FUNC2(void)
{
	struct timespec ts;
	/*
	 * calls getnstimeofday.
	 * If hrtimers then up to ns accurate, if not microsecond.
	 */
	FUNC0(&ts);

	return FUNC1(&ts);
}