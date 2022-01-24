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
struct frame {int /*<<< orphan*/  alloced; int /*<<< orphan*/  payload; int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
struct carlu {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  INFO ; 
 struct frame* FUNC0 (struct carlu*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct frame*) ; 
 int /*<<< orphan*/  FUNC2 (struct frame*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct frame*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct frame*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC7(struct carlu *ar)
{
	struct frame *frame;

	frame = FUNC0(ar, 0x40);
	FUNC4(frame, 0x10);

	FUNC5(FUNC3(frame, 0x10), 0x11, 0x10);
	FUNC5(FUNC3(frame, 0x10), 0x22, 0x10);
	FUNC5(FUNC2(frame, 0x10), 0x33, 0x10);
	FUNC5(FUNC3(frame, 0x10), 0x44, 0x10);

	FUNC6(INFO, "DATA:", frame->data, frame->len);

	FUNC6(INFO, "PAYLOAD:", frame->payload, frame->alloced);

	FUNC1(frame);
}