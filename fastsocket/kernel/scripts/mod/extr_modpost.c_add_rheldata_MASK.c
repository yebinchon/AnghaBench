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
struct module {int dummy; } ;
struct buffer {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  RHEL_MAJOR ; 
 int /*<<< orphan*/  RHEL_MINOR ; 
 int /*<<< orphan*/  FUNC0 (struct buffer*,char*,...) ; 

__attribute__((used)) static void FUNC1(struct buffer *b, struct module *mod)
{
	FUNC0(b, "\n");
	FUNC0(b, "static const struct rheldata _rheldata __used\n");
	FUNC0(b, "__attribute__((section(\".rheldata\"))) = {\n");
	FUNC0(b, "	.rhel_major = %d,\n", RHEL_MAJOR);
	FUNC0(b, "	.rhel_minor = %d,\n", RHEL_MINOR);
	FUNC0(b, "};\n");
}