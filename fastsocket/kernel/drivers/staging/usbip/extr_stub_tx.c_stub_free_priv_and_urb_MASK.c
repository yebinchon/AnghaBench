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
struct urb {int /*<<< orphan*/  transfer_buffer; int /*<<< orphan*/  setup_packet; } ;
struct stub_priv {int /*<<< orphan*/  list; struct urb* urb; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct stub_priv*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stub_priv_cache ; 
 int /*<<< orphan*/  FUNC3 (struct urb*) ; 

__attribute__((used)) static void FUNC4(struct stub_priv *priv)
{
	struct urb *urb = priv->urb;

	FUNC0(urb->setup_packet);
	FUNC0(urb->transfer_buffer);
	FUNC2(&priv->list);
	FUNC1(stub_priv_cache, priv);
	FUNC3(urb);
}