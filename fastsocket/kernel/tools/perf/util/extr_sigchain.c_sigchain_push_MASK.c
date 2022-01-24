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
struct sigchain_signal {scalar_t__* old; int n; int /*<<< orphan*/  alloc; } ;
typedef  int /*<<< orphan*/  sigchain_fun ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ SIG_ERR ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int,int /*<<< orphan*/ ) ; 
 struct sigchain_signal* signals ; 

__attribute__((used)) static int FUNC3(int sig, sigchain_fun f)
{
	struct sigchain_signal *s = signals + sig;
	FUNC1(sig);

	FUNC0(s->old, s->n + 1, s->alloc);
	s->old[s->n] = FUNC2(sig, f);
	if (s->old[s->n] == SIG_ERR)
		return -1;
	s->n++;
	return 0;
}