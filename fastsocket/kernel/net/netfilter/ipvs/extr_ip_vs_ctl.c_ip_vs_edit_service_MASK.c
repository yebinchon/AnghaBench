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
struct ip_vs_service_user_kern {scalar_t__ af; int netmask; int flags; int timeout; scalar_t__* pe_name; scalar_t__* sched_name; } ;
struct ip_vs_service {int flags; int timeout; int netmask; struct ip_vs_pe* pe; struct ip_vs_scheduler* scheduler; int /*<<< orphan*/  usecnt; } ;
struct ip_vs_scheduler {int dummy; } ;
struct ip_vs_pe {int dummy; } ;

/* Variables and functions */
 scalar_t__ AF_INET6 ; 
 int EINVAL ; 
 int ENOENT ; 
 int HZ ; 
 int IP_VS_SVC_F_HASHED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  __ip_vs_svc_lock ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct ip_vs_service*,struct ip_vs_pe*) ; 
 int FUNC3 (struct ip_vs_service*,struct ip_vs_scheduler*) ; 
 struct ip_vs_pe* FUNC4 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (struct ip_vs_pe*) ; 
 struct ip_vs_scheduler* FUNC6 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC7 (struct ip_vs_scheduler*) ; 
 int /*<<< orphan*/  FUNC8 (struct ip_vs_service*) ; 
 int FUNC9 (struct ip_vs_service*) ; 
 int /*<<< orphan*/  FUNC10 (char*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC13(struct ip_vs_service *svc, struct ip_vs_service_user_kern *u)
{
	struct ip_vs_scheduler *sched, *old_sched;
	struct ip_vs_pe *pe = NULL, *old_pe = NULL;
	int ret = 0;

	/*
	 * Lookup the scheduler, by 'u->sched_name'
	 */
	sched = FUNC6(u->sched_name);
	if (sched == NULL) {
		FUNC10("Scheduler module ip_vs_%s not found\n", u->sched_name);
		return -ENOENT;
	}
	old_sched = sched;

	if (u->pe_name && *u->pe_name) {
		pe = FUNC4(u->pe_name);
		if (pe == NULL) {
			FUNC10("persistence engine module ip_vs_pe_%s "
				"not found\n", u->pe_name);
			ret = -ENOENT;
			goto out;
		}
		old_pe = pe;
	}

#ifdef CONFIG_IP_VS_IPV6
	if (u->af == AF_INET6 && (u->netmask < 1 || u->netmask > 128)) {
		ret = -EINVAL;
		goto out;
	}
#endif

	FUNC11(&__ip_vs_svc_lock);

	/*
	 * Wait until all other svc users go away.
	 */
	FUNC0(FUNC1(&svc->usecnt) > 1);

	/*
	 * Set the flags and timeout value
	 */
	svc->flags = u->flags | IP_VS_SVC_F_HASHED;
	svc->timeout = u->timeout * HZ;
	svc->netmask = u->netmask;

	old_sched = svc->scheduler;
	if (sched != old_sched) {
		/*
		 * Unbind the old scheduler
		 */
		if ((ret = FUNC9(svc))) {
			old_sched = sched;
			goto out_unlock;
		}

		/*
		 * Bind the new scheduler
		 */
		if ((ret = FUNC3(svc, sched))) {
			/*
			 * If ip_vs_bind_scheduler fails, restore the old
			 * scheduler.
			 * The main reason of failure is out of memory.
			 *
			 * The question is if the old scheduler can be
			 * restored all the time. TODO: if it cannot be
			 * restored some time, we must delete the service,
			 * otherwise the system may crash.
			 */
			FUNC3(svc, old_sched);
			old_sched = sched;
			goto out_unlock;
		}
	}

	old_pe = svc->pe;
	if (pe != old_pe) {
		FUNC8(svc);
		FUNC2(svc, pe);
	}

  out_unlock:
	FUNC12(&__ip_vs_svc_lock);
  out:
	FUNC7(old_sched);
	FUNC5(old_pe);
	return ret;
}