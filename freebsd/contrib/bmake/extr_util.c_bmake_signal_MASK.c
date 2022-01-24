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
struct sigaction {void (* sa_handler ) (int) ;int /*<<< orphan*/  sa_flags; int /*<<< orphan*/  sa_mask; } ;

/* Variables and functions */
 int /*<<< orphan*/  SA_RESTART ; 
 void FUNC0 (int) ; 
 int FUNC1 (int,struct sigaction*,struct sigaction*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

void (*
FUNC3(int s, void (*a)(int)))(int)
{
    struct sigaction sa, osa;

    sa.sa_handler = a;
    FUNC2(&sa.sa_mask);
    sa.sa_flags = SA_RESTART;

    if (FUNC1(s, &sa, &osa) == -1)
	return SIG_ERR;
    else
	return osa.sa_handler;
}