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
struct loop {int dummy; } ;
struct invariant {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,struct invariant*) ; 
 int /*<<< orphan*/  invariant_p ; 
 int /*<<< orphan*/  invariants ; 
 int /*<<< orphan*/  FUNC1 (struct loop*,unsigned int) ; 

__attribute__((used)) static void
FUNC2 (struct loop *loop)
{
  struct invariant *inv;
  unsigned i;

  for (i = 0; FUNC0 (invariant_p, invariants, i, inv); i++)
    FUNC1 (loop, i);
}