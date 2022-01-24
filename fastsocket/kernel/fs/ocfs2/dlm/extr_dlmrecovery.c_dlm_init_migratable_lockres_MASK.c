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
typedef  void* u8 ;
typedef  int /*<<< orphan*/  u64 ;
struct dlm_migratable_lockres {int lockname_len; void* master; void* flags; int /*<<< orphan*/  mig_cookie; int /*<<< orphan*/  total_locks; scalar_t__ num_locks; int /*<<< orphan*/  lockname; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dlm_migratable_lockres*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char const*,int) ; 

__attribute__((used)) static void FUNC4(struct dlm_migratable_lockres *mres,
					const char *lockname, int namelen,
					int total_locks, u64 cookie,
					u8 flags, u8 master)
{
	/* mres here is one full page */
	FUNC0(mres);
	mres->lockname_len = namelen;
	FUNC3(mres->lockname, lockname, namelen);
	mres->num_locks = 0;
	mres->total_locks = FUNC1(total_locks);
	mres->mig_cookie = FUNC2(cookie);
	mres->flags = flags;
	mres->master = master;
}