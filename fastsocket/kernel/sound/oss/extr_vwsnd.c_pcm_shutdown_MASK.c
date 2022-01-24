#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ swbuf; } ;
typedef  TYPE_1__ vwsnd_port_t ;
typedef  int /*<<< orphan*/  vwsnd_dev_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *,TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  READ_INTR_MASK ; 
 int /*<<< orphan*/  WRITE_INTR_MASK ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(vwsnd_dev_t *devc,
			 vwsnd_port_t *rport,
			 vwsnd_port_t *wport)
{
	FUNC0("(devc=0x%p, rport=0x%p, wport=0x%p)\n", devc, rport, wport);

	if (rport && rport->swbuf) {
		FUNC1("shutting down rport\n");
		FUNC3(devc, rport, READ_INTR_MASK);
	}
	if (wport && wport->swbuf) {
		FUNC1("shutting down wport\n");
		FUNC3(devc, wport, WRITE_INTR_MASK);
	}
	FUNC2();
}