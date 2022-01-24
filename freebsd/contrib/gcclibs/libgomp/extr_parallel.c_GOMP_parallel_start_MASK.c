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

/* Variables and functions */
 unsigned int FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (void (*) (void*),void*,unsigned int,int /*<<< orphan*/ *) ; 

void
FUNC2 (void (*fn) (void *), void *data, unsigned num_threads)
{
  num_threads = FUNC0 (num_threads);
  FUNC1 (fn, data, num_threads, NULL);
}