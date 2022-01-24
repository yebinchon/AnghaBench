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
struct carlu {int /*<<< orphan*/  (* rx_cb ) (struct carlu*,void*,unsigned int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  VERBOSE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,void*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct carlu*,void*,unsigned int) ; 

__attribute__((used)) static void FUNC3(struct carlu *ar, void *buf,
			       unsigned int len)
{
	if (ar->rx_cb) {
		ar->rx_cb(ar, buf, len);
	} else {
		FUNC0("unhandled data:\n");
		FUNC1(VERBOSE, "DATA:", buf, len);
	}
}