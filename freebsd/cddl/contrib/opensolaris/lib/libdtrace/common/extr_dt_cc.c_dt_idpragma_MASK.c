#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  dt_idhash_t ;
struct TYPE_3__ {scalar_t__ di_iarg; int /*<<< orphan*/  di_lineno; } ;
typedef  TYPE_1__ dt_ident_t ;

/* Variables and functions */
 int /*<<< orphan*/  D_PRAGMA_UNUSED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  yylineno ; 

__attribute__((used)) static int
FUNC1(dt_idhash_t *dhp, dt_ident_t *idp, void *ignored)
{
	yylineno = idp->di_lineno;
	FUNC0(D_PRAGMA_UNUSED, "unused #pragma %s\n", (char *)idp->di_iarg);
	return (0);
}