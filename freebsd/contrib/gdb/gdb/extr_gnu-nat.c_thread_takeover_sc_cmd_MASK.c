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
typedef  int /*<<< orphan*/  vm_address_t ;
typedef  TYPE_1__* thread_basic_info_t ;
struct TYPE_3__ {int /*<<< orphan*/  suspend_count; } ;
typedef  TYPE_1__ thread_basic_info_data_t ;
struct proc {int /*<<< orphan*/  sc; int /*<<< orphan*/  port; } ;
typedef  int mach_msg_type_number_t ;
typedef  scalar_t__ error_t ;

/* Variables and functions */
 int /*<<< orphan*/  THREAD_BASIC_INFO ; 
 int THREAD_BASIC_INFO_COUNT ; 
 struct proc* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC7 (char *args, int from_tty)
{
  struct proc *thread = FUNC0 ();
  thread_basic_info_data_t _info;
  thread_basic_info_t info = &_info;
  mach_msg_type_number_t info_len = THREAD_BASIC_INFO_COUNT;
  error_t err =
  FUNC5 (thread->port, THREAD_BASIC_INFO, (int *) &info, &info_len);
  if (err)
    FUNC1 ("%s.", FUNC4 (err));
  thread->sc = info->suspend_count;
  if (from_tty)
    FUNC3 ("Suspend count was %d.\n", thread->sc);
  if (info != &_info)
    FUNC6 (FUNC2 (), (vm_address_t) info,
		   info_len * sizeof (int));
}