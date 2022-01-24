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
struct TYPE_3__ {int /*<<< orphan*/  s_addr; } ;
struct TYPE_4__ {TYPE_1__ sin_addr; } ;
union sctp_addr {TYPE_2__ v4; } ;
typedef  int /*<<< orphan*/  sctp_scope_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SCTP_SCOPE_GLOBAL ; 
 int /*<<< orphan*/  SCTP_SCOPE_LINK ; 
 int /*<<< orphan*/  SCTP_SCOPE_LOOPBACK ; 
 int /*<<< orphan*/  SCTP_SCOPE_PRIVATE ; 
 int /*<<< orphan*/  SCTP_SCOPE_UNUSABLE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static sctp_scope_t FUNC6(union sctp_addr *addr)
{
	sctp_scope_t retval;

	/* Check for unusable SCTP addresses. */
	if (FUNC0(addr->v4.sin_addr.s_addr)) {
		retval =  SCTP_SCOPE_UNUSABLE;
	} else if (FUNC2(addr->v4.sin_addr.s_addr)) {
		retval = SCTP_SCOPE_LOOPBACK;
	} else if (FUNC1(addr->v4.sin_addr.s_addr)) {
		retval = SCTP_SCOPE_LINK;
	} else if (FUNC3(addr->v4.sin_addr.s_addr) ||
		   FUNC4(addr->v4.sin_addr.s_addr) ||
		   FUNC5(addr->v4.sin_addr.s_addr)) {
		retval = SCTP_SCOPE_PRIVATE;
	} else {
		retval = SCTP_SCOPE_GLOBAL;
	}

	return retval;
}