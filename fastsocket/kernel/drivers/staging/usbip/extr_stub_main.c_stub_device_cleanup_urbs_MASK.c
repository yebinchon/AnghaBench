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
struct urb {int /*<<< orphan*/ * setup_packet; int /*<<< orphan*/ * transfer_buffer; } ;
struct stub_priv {struct urb* urb; } ;
struct stub_device {int /*<<< orphan*/ * setup_packet; int /*<<< orphan*/ * transfer_buffer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct stub_priv*) ; 
 int /*<<< orphan*/  stub_priv_cache ; 
 struct stub_priv* FUNC2 (struct urb*) ; 
 int /*<<< orphan*/  FUNC3 (struct urb*) ; 
 int /*<<< orphan*/  FUNC4 (struct urb*) ; 
 int /*<<< orphan*/  FUNC5 (char*,struct urb*) ; 

void FUNC6(struct stub_device *sdev)
{
	struct stub_priv *priv;

	FUNC5("free sdev %p\n", sdev);

	while ((priv = FUNC2(sdev))) {
		struct urb *urb = priv->urb;

		FUNC5("   free urb %p\n", urb);
		FUNC4(urb);

		FUNC1(stub_priv_cache, priv);

		if (urb->transfer_buffer != NULL)
			FUNC0(urb->transfer_buffer);

		if (urb->setup_packet != NULL)
			FUNC0(urb->setup_packet);

		FUNC3(urb);
	}
}