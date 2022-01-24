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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC1(void)
{
	FUNC0(stderr, "usage: brssl command [ options ]\n");
	FUNC0(stderr, "available commands:\n");
	FUNC0(stderr, "   client       run SSL client\n");
	FUNC0(stderr, "   server       run SSL server\n");
	FUNC0(stderr, "   verify       verify certificate chain\n");
	FUNC0(stderr, "   skey         decode private key\n");
	FUNC0(stderr, "   ta           decode trust anchors\n");
	FUNC0(stderr, "   chain        make C code for certificate chains\n");
	FUNC0(stderr, "   twrch        run the Twrch protocol\n");
	FUNC0(stderr, "   impl         report on implementations\n");
}