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
struct TYPE_3__ {int am_pseudo; scalar_t__ terminated; } ;
typedef  TYPE_1__ thread_info ;
typedef  int /*<<< orphan*/  lwpid_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC1 (lwpid_t tid)
{
  thread_info *p = FUNC0 (tid);
  if (NULL == p || p->terminated)
    return 0;
  else
    return p->am_pseudo;
}