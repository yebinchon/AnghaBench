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
struct usb_request {int /*<<< orphan*/  dma; } ;
struct usb_ep {int dummy; } ;
struct s3c_hsotg_req {struct usb_request req; int /*<<< orphan*/  queue; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_ADDR_INVALID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct s3c_hsotg_req* FUNC1 (int,int /*<<< orphan*/ ) ; 

struct usb_request *FUNC2(struct usb_ep *ep, gfp_t flags)
{
	struct s3c_hsotg_req *req;

	req = FUNC1(sizeof(struct s3c_hsotg_req), flags);
	if (!req)
		return NULL;

	FUNC0(&req->queue);

	req->req.dma = DMA_ADDR_INVALID;
	return &req->req;
}