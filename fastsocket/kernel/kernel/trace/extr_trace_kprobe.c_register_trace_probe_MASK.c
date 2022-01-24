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
struct TYPE_6__ {int addr; int /*<<< orphan*/  flags; } ;
struct TYPE_5__ {TYPE_3__ kp; } ;
struct TYPE_4__ {int /*<<< orphan*/  system; int /*<<< orphan*/  name; } ;
struct trace_probe {int /*<<< orphan*/  list; TYPE_2__ rp; TYPE_1__ call; } ;

/* Variables and functions */
 int EILSEQ ; 
 int EINVAL ; 
 int /*<<< orphan*/  KPROBE_FLAG_DISABLED ; 
 struct trace_probe* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct trace_probe*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int /*<<< orphan*/  probe_list ; 
 int /*<<< orphan*/  probe_lock ; 
 int FUNC6 (TYPE_3__*) ; 
 int FUNC7 (TYPE_2__*) ; 
 int FUNC8 (struct trace_probe*) ; 
 scalar_t__ FUNC9 (struct trace_probe*) ; 
 int /*<<< orphan*/  FUNC10 (struct trace_probe*) ; 
 int FUNC11 (struct trace_probe*) ; 

__attribute__((used)) static int FUNC12(struct trace_probe *tp)
{
	struct trace_probe *old_tp;
	int ret;

	FUNC3(&probe_lock);

	/* register as an event */
	old_tp = FUNC0(tp->call.name, tp->call.system);
	if (old_tp) {
		/* delete old event */
		ret = FUNC11(old_tp);
		if (ret < 0)
			goto end;
		FUNC1(old_tp);
	}
	ret = FUNC8(tp);
	if (ret) {
		FUNC5("Failed to register probe event(%d)\n", ret);
		goto end;
	}

	tp->rp.kp.flags |= KPROBE_FLAG_DISABLED;
	if (FUNC9(tp))
		ret = FUNC7(&tp->rp);
	else
		ret = FUNC6(&tp->rp.kp);

	if (ret) {
		FUNC5("Could not insert probe(%d)\n", ret);
		if (ret == -EILSEQ) {
			FUNC5("Probing address(0x%p) is not an "
				   "instruction boundary.\n",
				   tp->rp.kp.addr);
			ret = -EINVAL;
		}
		FUNC10(tp);
	} else
		FUNC2(&tp->list, &probe_list);
end:
	FUNC4(&probe_lock);
	return ret;
}