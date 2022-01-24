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
struct usbip_header_cmd_submit {int /*<<< orphan*/  interval; int /*<<< orphan*/  number_of_packets; int /*<<< orphan*/  start_frame; int /*<<< orphan*/  transfer_buffer_length; int /*<<< orphan*/  transfer_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct usbip_header_cmd_submit *pdu,
								int send)
{
	if (send) {
		pdu->transfer_flags = FUNC2(pdu->transfer_flags);

		FUNC3(&pdu->transfer_buffer_length);
		FUNC3(&pdu->start_frame);
		FUNC3(&pdu->number_of_packets);
		FUNC3(&pdu->interval);
	} else {
		pdu->transfer_flags = FUNC0(pdu->transfer_flags);

		FUNC1(&pdu->transfer_buffer_length);
		FUNC1(&pdu->start_frame);
		FUNC1(&pdu->number_of_packets);
		FUNC1(&pdu->interval);
	}
}