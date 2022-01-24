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
typedef  scalar_t__ br_rsa_public ;
typedef  int /*<<< orphan*/  br_rsa_private ;
typedef  int /*<<< orphan*/  br_rsa_keygen ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(void)
{
	br_rsa_public pub;
	br_rsa_private priv;
	br_rsa_keygen kgen;

	pub = FUNC2();
	priv = FUNC1();
	kgen = FUNC0();
	if (pub) {
		FUNC4("RSA i62", pub, priv, kgen);
	} else {
		FUNC3("%-30s UNAVAILABLE\n", "RSA i62");
	}
}