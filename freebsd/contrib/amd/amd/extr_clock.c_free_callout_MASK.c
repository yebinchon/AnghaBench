#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {struct TYPE_5__* c_next; } ;
typedef  TYPE_1__ callout ;

/* Variables and functions */
 scalar_t__ CALLOUT_FREE_SLOP ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_1__* free_callouts ; 
 scalar_t__ nfree_callouts ; 

__attribute__((used)) static void
FUNC1(callout *cp)
{
  if (nfree_callouts > CALLOUT_FREE_SLOP) {
    FUNC0(cp);
  } else {
    cp->c_next = free_callouts;
    free_callouts = cp;
    nfree_callouts++;
  }
}