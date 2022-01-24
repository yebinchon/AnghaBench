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
typedef  int /*<<< orphan*/  br_x509_trust_anchor ;
typedef  int /*<<< orphan*/  br_x509_certificate ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,int) ; 

br_x509_trust_anchor *
FUNC2(br_x509_certificate *xc)
{
	br_x509_trust_anchor ta;

	if (FUNC0(&ta, xc) < 0) {
		return NULL;
	} else {
		return FUNC1(&ta, sizeof ta);
	}
}