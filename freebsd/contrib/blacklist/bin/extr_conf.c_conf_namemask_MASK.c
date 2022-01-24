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
struct conf {int /*<<< orphan*/  c_rmask; int /*<<< orphan*/  c_family; int /*<<< orphan*/  c_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static const char *
FUNC3(char *b, size_t l, const struct conf *c)
{
	FUNC2(b, FUNC1(c->c_name), l);
	FUNC0(b, l, c->c_family, c->c_rmask);
	return b;
}