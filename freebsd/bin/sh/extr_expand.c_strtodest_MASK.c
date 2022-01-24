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
struct worddest {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BASESYNTAX ; 
 int /*<<< orphan*/  DQSYNTAX ; 
 int EXP_CASE ; 
 int EXP_GLOB ; 
 int EXP_SPLIT ; 
 int /*<<< orphan*/  FUNC0 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,struct worddest*) ; 
 int VSLENGTH ; 
 int VSTRIMLEFT ; 
 int VSTRIMLEFTMAX ; 
 int VSTRIMRIGHT ; 
 int VSTRIMRIGHTMAX ; 
 int /*<<< orphan*/  expdest ; 

__attribute__((used)) static void
FUNC3(const char *p, int flag, int subtype, int quoted,
    struct worddest *dst)
{
	if (subtype == VSLENGTH || subtype == VSTRIMLEFT ||
	    subtype == VSTRIMLEFTMAX || subtype == VSTRIMRIGHT ||
	    subtype == VSTRIMRIGHTMAX)
		FUNC0(p, expdest);
	else if (flag & EXP_SPLIT && !quoted && dst != NULL)
		FUNC2(p, BASESYNTAX, flag, expdest, dst);
	else if (flag & (EXP_GLOB | EXP_CASE))
		FUNC1(p, quoted ? DQSYNTAX : BASESYNTAX, expdest);
	else
		FUNC0(p, expdest);
}