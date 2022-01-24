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
typedef  int /*<<< orphan*/  sigset_t ;

/* Variables and functions */
 int /*<<< orphan*/  SIG_SETMASK ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int
FUNC3 (int set)
{
    sigset_t new_sig;
    sigset_t old_sig;
    
    FUNC1 (&new_sig);
    if (set != 0) {
      FUNC0();	/* FIXME, we don't know how to translate old mask to new */
    }
    FUNC2(SIG_SETMASK, &new_sig, &old_sig);
    return 1;	/* FIXME, we always return 1 as old value.  */
}