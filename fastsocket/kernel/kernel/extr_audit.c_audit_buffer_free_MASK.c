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
struct audit_buffer {int /*<<< orphan*/  list; scalar_t__ skb; } ;

/* Variables and functions */
 scalar_t__ AUDIT_MAXFREE ; 
 int /*<<< orphan*/  audit_freelist ; 
 scalar_t__ audit_freelist_count ; 
 int /*<<< orphan*/  audit_freelist_lock ; 
 int /*<<< orphan*/  FUNC0 (struct audit_buffer*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC5(struct audit_buffer *ab)
{
	unsigned long flags;

	if (!ab)
		return;

	if (ab->skb)
		FUNC1(ab->skb);

	FUNC3(&audit_freelist_lock, flags);
	if (audit_freelist_count > AUDIT_MAXFREE)
		FUNC0(ab);
	else {
		audit_freelist_count++;
		FUNC2(&ab->list, &audit_freelist);
	}
	FUNC4(&audit_freelist_lock, flags);
}