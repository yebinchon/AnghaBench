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
struct wusbhc {int /*<<< orphan*/  gtk_rekey_done_work; } ;
struct urb {struct wusbhc* context; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  wusbd ; 

__attribute__((used)) static void FUNC1(struct urb *urb)
{
	struct wusbhc *wusbhc = urb->context;

	FUNC0(wusbd, &wusbhc->gtk_rekey_done_work);
}