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
struct gomp_work_share {int dummy; } ;

/* Variables and functions */
 scalar_t__ gomp_dyn_var ; 
 struct gomp_work_share* FUNC0 (int,unsigned int) ; 
 unsigned int FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct gomp_work_share*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (void (*) (void*),void*,unsigned int,struct gomp_work_share*) ; 

void
FUNC4 (void (*fn) (void *), void *data,
			      unsigned num_threads, unsigned count)
{
  struct gomp_work_share *ws;

  num_threads = FUNC1 (num_threads);
  if (gomp_dyn_var && num_threads > count)
    num_threads = count;

  ws = FUNC0 (false, num_threads);
  FUNC2 (ws, count);
  FUNC3 (fn, data, num_threads, ws);
}