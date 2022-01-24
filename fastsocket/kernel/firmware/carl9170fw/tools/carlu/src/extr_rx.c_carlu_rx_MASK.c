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
struct frame {int /*<<< orphan*/  len; int /*<<< orphan*/  data; } ;
struct carlu {scalar_t__ rx_stream; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct carlu*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct carlu*,struct frame*) ; 

void FUNC2(struct carlu *ar, struct frame *frame)
{
	if (ar->rx_stream)
		FUNC1(ar, frame);
	else
		FUNC0(ar, frame->data, frame->len);
}