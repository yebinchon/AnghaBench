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
typedef  int u32 ;
struct urb {int transfer_flags; scalar_t__ actual_length; scalar_t__ transfer_buffer_length; int /*<<< orphan*/  pipe; } ;

/* Variables and functions */
 int ECOMM ; 
 int ENOSR ; 
 int EOVERFLOW ; 
 int EPIPE ; 
 int EREMOTEIO ; 
 int ETIME ; 
 int QTD_STS_BABBLE ; 
 int QTD_STS_DBE ; 
 int QTD_STS_HALTED ; 
 int QTD_STS_RCE ; 
 int URB_SHORT_NOT_OK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct urb *urb, u32 status)
{
	if (status & QTD_STS_HALTED) {
		if (status & QTD_STS_DBE)
			return FUNC0(urb->pipe) ? -ENOSR : -ECOMM;
		else if (status & QTD_STS_BABBLE)
			return -EOVERFLOW;
		else if (status & QTD_STS_RCE)
			return -ETIME;
		return -EPIPE;
	}
	if (FUNC0(urb->pipe)
	    && (urb->transfer_flags & URB_SHORT_NOT_OK)
	    && urb->actual_length < urb->transfer_buffer_length)
		return -EREMOTEIO;
	return 0;
}