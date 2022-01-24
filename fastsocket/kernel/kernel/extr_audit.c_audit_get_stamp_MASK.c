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
struct audit_context {int dummy; } ;

/* Variables and functions */
 struct timespec CURRENT_TIME ; 
 unsigned int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct audit_context*,struct timespec*,unsigned int*) ; 

__attribute__((used)) static inline void FUNC2(struct audit_context *ctx,
				   struct timespec *t, unsigned int *serial)
{
	if (!ctx || !FUNC1(ctx, t, serial)) {
		*t = CURRENT_TIME;
		*serial = FUNC0();
	}
}