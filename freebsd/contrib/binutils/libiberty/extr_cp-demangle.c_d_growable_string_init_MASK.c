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
struct d_growable_string {scalar_t__ allocation_failure; scalar_t__ alc; scalar_t__ len; int /*<<< orphan*/ * buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct d_growable_string*,size_t) ; 

__attribute__((used)) static void
FUNC1 (struct d_growable_string *dgs, size_t estimate)
{
  dgs->buf = NULL;
  dgs->len = 0;
  dgs->alc = 0;
  dgs->allocation_failure = 0;

  if (estimate > 0)
    FUNC0 (dgs, estimate);
}