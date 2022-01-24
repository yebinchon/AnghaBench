#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct print_buf {int dummy; } ;
struct link {int out_queue_size; scalar_t__ deferred_inqueue_sz; TYPE_3__* newest_deferred_in; TYPE_3__* oldest_deferred_in; TYPE_3__* last_out; TYPE_3__* next_out; TYPE_3__* first_out; scalar_t__ next_in_no; scalar_t__ next_out_no; TYPE_2__* b_ptr; int /*<<< orphan*/  addr; } ;
struct TYPE_6__ {int /*<<< orphan*/ * next; } ;
struct TYPE_4__ {int /*<<< orphan*/  name; } ;
struct TYPE_5__ {TYPE_1__ publ; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (struct link*) ; 
 scalar_t__ FUNC2 (struct link*) ; 
 scalar_t__ FUNC3 (struct link*) ; 
 scalar_t__ FUNC4 (struct link*) ; 
 scalar_t__ FUNC5 (struct link*) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct print_buf*,char const*,...) ; 

__attribute__((used)) static void FUNC9(struct link *l_ptr, struct print_buf *buf,
		       const char *str)
{
	FUNC8(buf, str);
	if (FUNC2(l_ptr) || FUNC3(l_ptr))
		return;
	FUNC8(buf, "Link %x<%s>:",
		    l_ptr->addr, l_ptr->b_ptr->publ.name);
	FUNC8(buf, ": NXO(%u):", FUNC6(l_ptr->next_out_no));
	FUNC8(buf, "NXI(%u):", FUNC6(l_ptr->next_in_no));
	FUNC8(buf, "SQUE");
	if (l_ptr->first_out) {
		FUNC8(buf, "[%u..", FUNC7(FUNC0(l_ptr->first_out)));
		if (l_ptr->next_out)
			FUNC8(buf, "%u..",
				    FUNC7(FUNC0(l_ptr->next_out)));
		FUNC8(buf, "%u]",
			    FUNC7(FUNC0
				      (l_ptr->last_out)), l_ptr->out_queue_size);
		if ((FUNC6(FUNC7(FUNC0(l_ptr->last_out)) -
			 FUNC7(FUNC0(l_ptr->first_out)))
		     != (l_ptr->out_queue_size - 1))
		    || (l_ptr->last_out->next != NULL)) {
			FUNC8(buf, "\nSend queue inconsistency\n");
			FUNC8(buf, "first_out= %x ", l_ptr->first_out);
			FUNC8(buf, "next_out= %x ", l_ptr->next_out);
			FUNC8(buf, "last_out= %x ", l_ptr->last_out);
			FUNC1(l_ptr);
		}
	} else
		FUNC8(buf, "[]");
	FUNC8(buf, "SQSIZ(%u)", l_ptr->out_queue_size);
	if (l_ptr->oldest_deferred_in) {
		u32 o = FUNC7(FUNC0(l_ptr->oldest_deferred_in));
		u32 n = FUNC7(FUNC0(l_ptr->newest_deferred_in));
		FUNC8(buf, ":RQUE[%u..%u]", o, n);
		if (l_ptr->deferred_inqueue_sz != FUNC6((n + 1) - o)) {
			FUNC8(buf, ":RQSIZ(%u)",
				    l_ptr->deferred_inqueue_sz);
		}
	}
	if (FUNC4(l_ptr))
		FUNC8(buf, ":WU");
	if (FUNC2(l_ptr))
		FUNC8(buf, ":RR");
	if (FUNC3(l_ptr))
		FUNC8(buf, ":RU");
	if (FUNC5(l_ptr))
		FUNC8(buf, ":WW");
	FUNC8(buf, "\n");
}