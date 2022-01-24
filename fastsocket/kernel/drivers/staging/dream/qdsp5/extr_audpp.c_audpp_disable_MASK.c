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
struct audpp_state {void** private; scalar_t__ open_count; int /*<<< orphan*/  lock; int /*<<< orphan*/ * mod; int /*<<< orphan*/ ** func; } ;

/* Variables and functions */
 int /*<<< orphan*/  AUDPP_MSG_CFG_MSG ; 
 int /*<<< orphan*/  AUDPP_MSG_ENA_DIS ; 
 int /*<<< orphan*/  EV_DISABLE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct audpp_state*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 struct audpp_state the_audpp_state ; 

void FUNC10(int id, void *private)
{
	struct audpp_state *audpp = &the_audpp_state;
	unsigned long flags;

	if (id < -1 || id > 4)
		return;

	if (id == -1)
		id = 5;

	FUNC7(audpp->lock);
	FUNC0(EV_DISABLE, 1);
	if (!audpp->func[id])
		goto out;
	if (audpp->private[id] != private)
		goto out;

	FUNC4(flags);
	FUNC2(audpp, id, AUDPP_MSG_CFG_MSG, AUDPP_MSG_ENA_DIS);
	audpp->func[id] = NULL;
	audpp->private[id] = NULL;
	FUNC3(flags);

	if (--audpp->open_count == 0) {
		FUNC9("audpp: disable\n");
		FUNC0(EV_DISABLE, 2);
		FUNC1(0);
		FUNC5(audpp->mod);
		FUNC6(audpp->mod);
		audpp->mod = NULL;
	}
out:
	FUNC8(audpp->lock);
}