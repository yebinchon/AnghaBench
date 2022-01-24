#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint_t ;
typedef  int /*<<< orphan*/  dtrace_hdl_t ;
struct TYPE_4__ {int int_hashlen; int /*<<< orphan*/ * int_hdl; int /*<<< orphan*/ * int_hash; } ;
typedef  TYPE_1__ dt_inttab_t ;

/* Variables and functions */
 int _dtrace_intbuckets ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 void* FUNC2 (int /*<<< orphan*/ *,int) ; 

dt_inttab_t *
FUNC3(dtrace_hdl_t *dtp)
{
	uint_t len = _dtrace_intbuckets;
	dt_inttab_t *ip;

	FUNC0((len & (len - 1)) == 0);

	if ((ip = FUNC2(dtp, sizeof (dt_inttab_t))) == NULL ||
	    (ip->int_hash = FUNC2(dtp, sizeof (void *) * len)) == NULL) {
		FUNC1(dtp, ip);
		return (NULL);
	}

	ip->int_hdl = dtp;
	ip->int_hashlen = len;

	return (ip);
}