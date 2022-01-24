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
struct loop {struct loop** pred; scalar_t__ depth; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 

struct loop *
FUNC1 (struct loop *loop, unsigned depth)
{
  FUNC0 (depth <= (unsigned) loop->depth);

  if (depth == (unsigned) loop->depth)
    return loop;

  return loop->pred[depth];
}