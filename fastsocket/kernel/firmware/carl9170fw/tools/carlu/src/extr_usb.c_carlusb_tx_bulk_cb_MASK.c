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
struct libusb_transfer {scalar_t__ user_data; } ;
struct frame {scalar_t__ dev; } ;
struct carlu {scalar_t__ tx_stream; int /*<<< orphan*/  tx_queue_lock; int /*<<< orphan*/  tx_queue_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct carlu*,struct frame*) ; 
 int /*<<< orphan*/  FUNC4 (struct carlu*) ; 
 int /*<<< orphan*/  FUNC5 (struct frame*,int) ; 

__attribute__((used)) static void FUNC6(struct libusb_transfer *transfer)
{
	struct frame *frame = (void *) transfer->user_data;
	struct carlu *ar = (void *) frame->dev;

	FUNC0(FUNC1(ar->tx_queue_lock) != 0);
	ar->tx_queue_len--;
	FUNC2(ar->tx_queue_lock);

	if (ar->tx_stream)
		FUNC5(frame, 4);

	FUNC3(ar, frame);
	FUNC4(ar);
}