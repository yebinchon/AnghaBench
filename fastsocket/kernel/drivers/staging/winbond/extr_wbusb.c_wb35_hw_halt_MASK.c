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
struct wbsoft_priv {int /*<<< orphan*/  sHwData; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct wbsoft_priv*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

__attribute__((used)) static void FUNC5(struct wbsoft_priv *adapter)
{
	FUNC0(adapter);

	/* Turn off Rx and Tx hardware ability */
	FUNC2(&adapter->sHwData);
#ifdef _PE_USB_INI_DUMP_
	printk("[w35und] Hal_stop O.K.\n");
#endif
	/* Waiting Irp completed */
	FUNC3(100);

	FUNC1(&adapter->sHwData);
}