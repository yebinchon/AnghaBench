#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_7__ {int pr_size; } ;
typedef  TYPE_1__ sysset_t ;
struct TYPE_8__ {int num_syscalls; } ;
typedef  TYPE_2__ procinfo ;

/* Variables and functions */
 int FUNC0 (TYPE_2__*) ; 
 TYPE_1__* FUNC1 (int) ; 

__attribute__((used)) static sysset_t *
FUNC2 (procinfo * pi)
{
  sysset_t *ret;
  int size = FUNC0 (pi);
  ret = FUNC1 (size);
#ifdef DYNAMIC_SYSCALLS
  ret->pr_size = (pi->num_syscalls + (8 * sizeof (uint64_t) - 1))
                 / (8 * sizeof (uint64_t));
#endif
  return ret;
}