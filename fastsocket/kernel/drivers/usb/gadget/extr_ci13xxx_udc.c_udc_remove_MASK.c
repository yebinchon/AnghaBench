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
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct ci13xxx {TYPE_1__ gadget; } ;

/* Variables and functions */
 struct ci13xxx* _udc ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct ci13xxx*) ; 

__attribute__((used)) static void FUNC4(void)
{
	struct ci13xxx *udc = _udc;

	if (udc == NULL) {
		FUNC2("EINVAL");
		return;
	}

#ifdef CONFIG_USB_GADGET_DEBUG_FILES
	dbg_remove_files(&udc->gadget.dev);
#endif
	FUNC1(&udc->gadget.dev);

	FUNC3(udc);
	_udc = NULL;
}