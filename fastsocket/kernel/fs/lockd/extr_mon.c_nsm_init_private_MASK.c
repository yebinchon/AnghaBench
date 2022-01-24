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
typedef  int /*<<< orphan*/  u64 ;
struct timespec {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  data; } ;
struct nsm_handle {TYPE_1__ sm_priv; } ;
typedef  unsigned long s64 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct timespec*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,int /*<<< orphan*/ *) ; 
 unsigned long FUNC2 (struct timespec*) ; 

__attribute__((used)) static void FUNC3(struct nsm_handle *nsm)
{
	u64 *p = (u64 *)&nsm->sm_priv.data;
	struct timespec ts;
	s64 ns;

	FUNC0(&ts);
	ns = FUNC2(&ts);
	FUNC1(ns, p);
	FUNC1((unsigned long)nsm, p + 1);
}