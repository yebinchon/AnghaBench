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
struct whc_qset {int dummy; } ;
struct whc {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct whc*,struct whc_qset*) ; 
 int /*<<< orphan*/  FUNC1 (struct whc*,struct whc_qset*) ; 
 struct whc_qset* FUNC2 (struct whc*,int /*<<< orphan*/ ) ; 

int FUNC3(struct whc *whc)
{
	struct whc_qset *qset;

	qset = FUNC2(whc, GFP_KERNEL);
	if (qset == NULL)
		return -ENOMEM;

	FUNC1(whc, qset);
	FUNC0(whc, qset);

	return 0;
}