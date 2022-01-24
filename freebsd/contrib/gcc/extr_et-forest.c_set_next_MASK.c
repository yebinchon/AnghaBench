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
struct et_occ {struct et_occ* parent; struct et_occ* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 

__attribute__((used)) static inline void
FUNC1 (struct et_occ *occ, struct et_occ *t)
{
#ifdef DEBUG_ET
  gcc_assert (occ != t);
#endif

  occ->next = t;
  if (t)
    t->parent = occ;
}