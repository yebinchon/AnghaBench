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
struct gserial {int dummy; } ;
struct f_acm {int serial_state; } ;

/* Variables and functions */
 int ACM_CTRL_DCD ; 
 int ACM_CTRL_DSR ; 
 int /*<<< orphan*/  FUNC0 (struct f_acm*) ; 
 struct f_acm* FUNC1 (struct gserial*) ; 

__attribute__((used)) static void FUNC2(struct gserial *port)
{
	struct f_acm		*acm = FUNC1(port);

	acm->serial_state |= ACM_CTRL_DSR | ACM_CTRL_DCD;
	FUNC0(acm);
}