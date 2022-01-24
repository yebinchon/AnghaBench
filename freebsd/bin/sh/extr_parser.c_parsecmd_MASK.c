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
typedef  union node {int dummy; } node ;

/* Variables and functions */
 union node* NEOF ; 
 int TEOF ; 
 int TNL ; 
 scalar_t__ checkkwd ; 
 int doprompt ; 
 int /*<<< orphan*/ * heredoclist ; 
 union node* FUNC0 (int) ; 
 scalar_t__ needprompt ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ tokpushback ; 

union node *
FUNC4(int interact)
{
	int t;

	/* This assumes the parser is not re-entered,
	 * which could happen if we add command substitution on PS1/PS2.
	 */
	FUNC1();
	heredoclist = NULL;

	tokpushback = 0;
	checkkwd = 0;
	doprompt = interact;
	if (doprompt)
		FUNC3(1);
	else
		FUNC3(0);
	needprompt = 0;
	t = FUNC2();
	if (t == TEOF)
		return NEOF;
	if (t == TNL)
		return NULL;
	tokpushback++;
	return FUNC0(1);
}