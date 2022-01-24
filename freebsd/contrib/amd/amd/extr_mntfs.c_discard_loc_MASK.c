#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* voidp ;
struct TYPE_6__ {struct TYPE_6__* al_fo; } ;
typedef  TYPE_1__ am_loc ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC2(voidp v)
{
  am_loc *loc = v;
  if (loc->al_fo) {
    FUNC1(loc->al_fo);
    FUNC0(loc->al_fo);
  }
  FUNC0(loc);
}