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
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_2__ {char* kmod_name; } ;
struct common_audit_data {TYPE_1__ u; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct common_audit_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KMOD ; 
 int /*<<< orphan*/  SECCLASS_SYSTEM ; 
 int /*<<< orphan*/  SECINITSID_KERNEL ; 
 int /*<<< orphan*/  SYSTEM__MODULE_REQUEST ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct common_audit_data*) ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(char *kmod_name)
{
	u32 sid;
	struct common_audit_data ad;

	sid = FUNC2(current);

	FUNC0(&ad, KMOD);
	ad.u.kmod_name = kmod_name;

	return FUNC1(sid, SECINITSID_KERNEL, SECCLASS_SYSTEM,
			    SYSTEM__MODULE_REQUEST, &ad);
}