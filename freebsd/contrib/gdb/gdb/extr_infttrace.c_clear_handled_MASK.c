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
struct TYPE_3__ {scalar_t__ handled; } ;
typedef  TYPE_1__ thread_info ;
typedef  scalar_t__ lwpid_t ;

/* Variables and functions */
 scalar_t__ debug_on ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 TYPE_1__* FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 

__attribute__((used)) static void
FUNC3 (lwpid_t tid)
{
  thread_info *p;

#ifdef WAIT_BUFFER_DEBUG
  if (debug_on)
    printf ("clear_handled %d\n", (int) tid);
#endif

  p = FUNC1 (tid);
  if (p == NULL)
    FUNC0 ("Internal error: No thread state to clear?");

  p->handled = 0;
}