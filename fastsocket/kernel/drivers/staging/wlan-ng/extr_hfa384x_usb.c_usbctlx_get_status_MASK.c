#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  resp2; int /*<<< orphan*/  resp1; int /*<<< orphan*/  resp0; int /*<<< orphan*/  status; } ;
typedef  TYPE_1__ hfa384x_usb_cmdresp_t ;
struct TYPE_6__ {int status; void* resp2; void* resp1; void* resp0; } ;
typedef  TYPE_2__ hfa384x_cmdresult_t ;

/* Variables and functions */
 int HFA384x_STATUS_RESULT ; 
 void* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,void*,void*,void*) ; 

__attribute__((used)) static int
FUNC2(const hfa384x_usb_cmdresp_t *cmdresp,
		   hfa384x_cmdresult_t *result)
{
	result->status = FUNC0(cmdresp->status);
	result->resp0 = FUNC0(cmdresp->resp0);
	result->resp1 = FUNC0(cmdresp->resp1);
	result->resp2 = FUNC0(cmdresp->resp2);

	FUNC1("cmdresult:status=0x%04x "
		 "resp0=0x%04x resp1=0x%04x resp2=0x%04x\n",
		 result->status, result->resp0, result->resp1, result->resp2);

	return result->status & HFA384x_STATUS_RESULT;
}