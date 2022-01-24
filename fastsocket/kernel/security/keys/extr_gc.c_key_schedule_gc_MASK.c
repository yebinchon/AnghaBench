#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ time_t ;
struct TYPE_2__ {scalar_t__ tv_sec; } ;

/* Variables and functions */
 scalar_t__ HZ ; 
 int /*<<< orphan*/  KEY_GC_REAP_KEYTYPE ; 
 TYPE_1__ FUNC0 () ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__) ; 
 int /*<<< orphan*/  key_gc_flags ; 
 scalar_t__ key_gc_next_run ; 
 int /*<<< orphan*/  key_gc_timer ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

void FUNC6(time_t gc_at)
{
	unsigned long expires;
	time_t now = FUNC0().tv_sec;

	FUNC2("%ld", gc_at - now);

	if (gc_at <= now || FUNC5(KEY_GC_REAP_KEYTYPE, &key_gc_flags)) {
		FUNC1("IMMEDIATE");
		FUNC3();
	} else if (gc_at < key_gc_next_run) {
		FUNC1("DEFERRED");
		key_gc_next_run = gc_at;
		expires = jiffies + (gc_at - now) * HZ;
		FUNC4(&key_gc_timer, expires);
	}
}