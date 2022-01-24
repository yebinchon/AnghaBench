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
struct TYPE_2__ {int /*<<< orphan*/  mutex; } ;
struct uwb_rc {int /*<<< orphan*/  uwb_dev; TYPE_1__ uwb_beca; int /*<<< orphan*/ * cmd; int /*<<< orphan*/ * priv; int /*<<< orphan*/  (* stop ) (struct uwb_rc*) ;scalar_t__ ready; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct uwb_rc*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct uwb_rc*) ; 
 int /*<<< orphan*/  FUNC4 (struct uwb_rc*) ; 
 int /*<<< orphan*/  FUNC5 (struct uwb_rc*) ; 
 int /*<<< orphan*/  FUNC6 (struct uwb_rc*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  uwb_dev_offair_helper ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct uwb_rc*) ; 
 int /*<<< orphan*/  FUNC11 (struct uwb_rc*) ; 
 int /*<<< orphan*/  FUNC12 (struct uwb_rc*) ; 
 int /*<<< orphan*/  FUNC13 (struct uwb_rc*) ; 
 int /*<<< orphan*/  FUNC14 (struct uwb_rc*) ; 

void FUNC15(struct uwb_rc *rc)
{
	rc->ready = 0;

	FUNC5(rc);
	FUNC13(rc);
	FUNC10(rc);

	rc->stop(rc);

	FUNC14(rc);
	FUNC11(rc);

	FUNC7(&rc->uwb_dev);
	rc->priv = NULL;
	rc->cmd = NULL;
	FUNC9(&rc->uwb_dev);
	FUNC1(&rc->uwb_beca.mutex);
	FUNC6(rc, uwb_dev_offair_helper, NULL);
	FUNC0(rc);
	FUNC2(&rc->uwb_beca.mutex);
	FUNC12(rc);
 	FUNC4(rc);
	FUNC8(&rc->uwb_dev);
}