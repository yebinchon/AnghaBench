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
struct carlu {int stop_event_polling; int /*<<< orphan*/  event_thread; int /*<<< orphan*/  event_pipe; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct carlu* FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct carlu*) ; 
 scalar_t__ FUNC2 (struct carlu*) ; 
 int FUNC3 (struct carlu*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct carlu*) ; 
 int FUNC5 (struct carlu*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct carlu*) ; 
 int /*<<< orphan*/  FUNC7 (struct carlu*) ; 
 int /*<<< orphan*/  carlusb_event_thread ; 
 int /*<<< orphan*/  FUNC8 (struct carlu*) ; 
 int FUNC9 (struct carlu*) ; 
 int FUNC10 (struct carlu*) ; 
 int FUNC11 (struct carlu*) ; 
 struct carlu* FUNC12 () ; 
 int FUNC13 (struct carlu*) ; 
 int FUNC14 (struct carlu*,int) ; 
 int /*<<< orphan*/  FUNC15 (char*,...) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 
 int FUNC17 (int /*<<< orphan*/ ) ; 

struct carlu *FUNC18(void)
{
	struct carlu *ar;
	int ret = -ENOMEM;

	ar = FUNC12();
	if (FUNC2(ar)) {
		if (FUNC1(ar))
			ret = FUNC3(ar);
		goto err_out;
	}

	ret = FUNC13(ar);
	if (ret)
		goto err_out;

	ret = FUNC11(ar);
	if (ret)
		goto err_out;

	ret = FUNC17(ar->event_pipe);
	if (ret)
		goto err_out;

	ar->stop_event_polling = false;
	ar->event_thread = FUNC4(carlusb_event_thread, ar);

	ret = FUNC14(ar, true);
	if (ret)
		goto err_kill;

	ret = FUNC9(ar);
	if (ret)
		goto err_kill;

	ret = FUNC10(ar);
	if (ret)
		goto err_kill;

	ret = FUNC5(ar, 0x44110dee);
	if (ret) {
		FUNC15("echo test failed...\n");
		goto err_kill;
	}

	FUNC16("firmware is active and running.\n");

	FUNC6(ar);

	return ar;

err_kill:
	FUNC7(ar);

err_out:
	FUNC8(ar);
	FUNC15("usb device rendezvous failed (%d).\n", ret);
	return FUNC0(ret);
}