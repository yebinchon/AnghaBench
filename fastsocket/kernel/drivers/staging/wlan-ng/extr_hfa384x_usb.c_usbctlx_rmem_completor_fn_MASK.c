#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  len; TYPE_1__* rmemresp; int /*<<< orphan*/  data; } ;
typedef  TYPE_2__ usbctlx_rmem_completor_t ;
typedef  int /*<<< orphan*/  usbctlx_completor_t ;
struct TYPE_3__ {int /*<<< orphan*/  data; int /*<<< orphan*/  frmlen; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(usbctlx_completor_t *head)
{
	usbctlx_rmem_completor_t *complete = (usbctlx_rmem_completor_t *) head;

	FUNC1("rmemresp:len=%d\n", complete->rmemresp->frmlen);
	FUNC0(complete->data, complete->rmemresp->data, complete->len);
	return 0;
}