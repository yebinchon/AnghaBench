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
struct cred {scalar_t__ uid; scalar_t__ euid; scalar_t__ suid; int /*<<< orphan*/  cap_permitted; int /*<<< orphan*/  cap_effective; } ;

/* Variables and functions */
 int /*<<< orphan*/  SECURE_KEEP_CAPS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC2(struct cred *new, const struct cred *old)
{
	if ((old->uid == 0 || old->euid == 0 || old->suid == 0) &&
	    (new->uid != 0 && new->euid != 0 && new->suid != 0) &&
	    !FUNC1(SECURE_KEEP_CAPS)) {
		FUNC0(new->cap_permitted);
		FUNC0(new->cap_effective);
	}
	if (old->euid == 0 && new->euid != 0)
		FUNC0(new->cap_effective);
	if (old->euid != 0 && new->euid == 0)
		new->cap_effective = new->cap_permitted;
}