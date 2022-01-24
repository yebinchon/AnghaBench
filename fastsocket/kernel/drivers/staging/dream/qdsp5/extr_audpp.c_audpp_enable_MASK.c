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
struct audpp_state {int /*<<< orphan*/  lock; scalar_t__ enabled; int /*<<< orphan*/  mod; int /*<<< orphan*/ ** private; int /*<<< orphan*/ ** func; scalar_t__ open_count; } ;
typedef  int /*<<< orphan*/ * audpp_event_func ;

/* Variables and functions */
 int /*<<< orphan*/  AUDPP_MSG_CFG_MSG ; 
 int /*<<< orphan*/  AUDPP_MSG_ENA_ENA ; 
 int EBUSY ; 
 int EINVAL ; 
 int /*<<< orphan*/  EV_ENABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  adsp_ops ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct audpp_state*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct audpp_state*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 struct audpp_state the_audpp_state ; 

int FUNC11(int id, audpp_event_func func, void *private)
{
	struct audpp_state *audpp = &the_audpp_state;
	int res = 0;

	if (id < -1 || id > 4)
		return -EINVAL;

	if (id == -1)
		id = 5;

	FUNC7(audpp->lock);
	if (audpp->func[id]) {
		res = -EBUSY;
		goto out;
	}

	audpp->func[id] = func;
	audpp->private[id] = private;

	FUNC0(EV_ENABLE, 1);
	if (audpp->open_count++ == 0) {
		FUNC10("audpp: enable\n");
		res = FUNC6("AUDPPTASK", &audpp->mod, &adsp_ops, audpp);
		if (res < 0) {
			FUNC9("audpp: cannot open AUDPPTASK\n");
			audpp->open_count = 0;
			audpp->func[id] = NULL;
			audpp->private[id] = NULL;
			goto out;
		}
		FUNC0(EV_ENABLE, 2);
		FUNC5(audpp->mod);
		FUNC1(1);
	} else {
		unsigned long flags;
		FUNC4(flags);
		if (audpp->enabled)
			FUNC2(audpp, id,
					 AUDPP_MSG_CFG_MSG, AUDPP_MSG_ENA_ENA);
		FUNC3(flags);
	}

	res = 0;
out:
	FUNC8(audpp->lock);
	return res;
}