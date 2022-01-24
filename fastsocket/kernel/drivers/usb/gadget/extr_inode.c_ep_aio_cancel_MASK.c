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
struct kiocb_priv {scalar_t__ req; struct ep_data* epdata; } ;
struct kiocb {struct kiocb_priv* private; } ;
struct io_event {int dummy; } ;
struct ep_data {scalar_t__ ep; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct kiocb*) ; 
 int /*<<< orphan*/  FUNC1 (struct kiocb*) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int FUNC5 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct kiocb *iocb, struct io_event *e)
{
	struct kiocb_priv	*priv = iocb->private;
	struct ep_data		*epdata;
	int			value;

	FUNC3();
	epdata = priv->epdata;
	// spin_lock(&epdata->dev->lock);
	FUNC1(iocb);
	if (FUNC2(epdata && epdata->ep && priv->req))
		value = FUNC5 (epdata->ep, priv->req);
	else
		value = -EINVAL;
	// spin_unlock(&epdata->dev->lock);
	FUNC4();

	FUNC0(iocb);
	return value;
}