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
typedef  int /*<<< orphan*/  u32 ;
struct urb {int dummy; } ;
struct ptd {int dummy; } ;
struct isp1760_qtd {int dummy; } ;
struct isp1760_qh {int dummy; } ;
struct isp1760_hcd {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct isp1760_hcd*,struct isp1760_qh*,struct isp1760_qtd*,struct urb*,int /*<<< orphan*/ ,struct ptd*) ; 
 int /*<<< orphan*/  FUNC1 (struct isp1760_hcd*,struct isp1760_qh*,struct isp1760_qtd*,struct urb*,int /*<<< orphan*/ ,struct ptd*) ; 

__attribute__((used)) static void FUNC2(struct isp1760_hcd *priv, struct isp1760_qh *qh,
			struct isp1760_qtd *qtd, struct urb *urb,
			u32 payload, struct ptd *ptd)
{
	FUNC1(priv, qh, qtd, urb, payload, ptd);
	FUNC0(priv, qh, qtd, urb,  payload, ptd);
}