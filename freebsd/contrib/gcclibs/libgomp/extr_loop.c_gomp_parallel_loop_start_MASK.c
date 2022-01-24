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
typedef  enum gomp_schedule_type { ____Placeholder_gomp_schedule_type } gomp_schedule_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gomp_work_share*,long,long,long,int,long) ; 
 struct gomp_work_share* FUNC1 (int,unsigned int) ; 
 unsigned int FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (void (*) (void*),void*,unsigned int,struct gomp_work_share*) ; 

__attribute__((used)) static void
FUNC4 (void (*fn) (void *), void *data,
			  unsigned num_threads, long start, long end,
			  long incr, enum gomp_schedule_type sched,
			  long chunk_size)
{
  struct gomp_work_share *ws;

  num_threads = FUNC2 (num_threads);
  ws = FUNC1 (false, num_threads);
  FUNC0 (ws, start, end, incr, sched, chunk_size);
  FUNC3 (fn, data, num_threads, ws);
}