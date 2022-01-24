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
struct whc_qset {int /*<<< orphan*/  remove_complete; } ;
struct whc {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct whc*,struct whc_qset*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(struct whc *whc, struct whc_qset *qset)
{
	FUNC1(&qset->remove_complete);
	FUNC0(whc, qset);
}