#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct TYPE_4__ {int /*<<< orphan*/  key; struct ipc_security_struct* security; } ;
struct sem_array {TYPE_2__ sem_perm; } ;
struct ipc_security_struct {int /*<<< orphan*/  sid; } ;
struct TYPE_3__ {int /*<<< orphan*/  ipc_id; } ;
struct common_audit_data {TYPE_1__ u; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct common_audit_data*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IPC ; 
 int /*<<< orphan*/  SECCLASS_SEM ; 
 int /*<<< orphan*/  SEM__ASSOCIATE ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct common_audit_data*) ; 
 int /*<<< orphan*/  FUNC2 () ; 

__attribute__((used)) static int FUNC3(struct sem_array *sma, int semflg)
{
	struct ipc_security_struct *isec;
	struct common_audit_data ad;
	u32 sid = FUNC2();

	isec = sma->sem_perm.security;

	FUNC0(&ad, IPC);
	ad.u.ipc_id = sma->sem_perm.key;

	return FUNC1(sid, isec->sid, SECCLASS_SEM,
			    SEM__ASSOCIATE, &ad);
}