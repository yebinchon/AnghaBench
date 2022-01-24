#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* decl_t ;
struct TYPE_8__ {scalar_t__ name; } ;
struct TYPE_7__ {scalar_t__ name; } ;
struct TYPE_6__ {scalar_t__ mode; } ;

/* Variables and functions */
 TYPE_4__* FUNC0 (TYPE_1__* const) ; 
 TYPE_2__* FUNC1 (TYPE_1__* const) ; 
 scalar_t__ dm_reserv ; 
 scalar_t__ dm_unit ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static int
FUNC4 (const void *decl_1, const void *decl_2)
{
  const decl_t d1 = (const decl_t) decl_1;
  const decl_t d2 = (const decl_t) decl_2;

  FUNC2 ((d1->mode == dm_unit && FUNC1 (d1)->name)
	      || (d1->mode == dm_reserv && FUNC0 (d1)->name));
  FUNC2 ((d2->mode == dm_unit && FUNC1 (d2)->name)
	      || (d2->mode == dm_reserv && FUNC0 (d2)->name));
  return FUNC3 ((d1->mode == dm_unit
                  ? FUNC1 (d1)->name : FUNC0 (d1)->name),
                 (d2->mode == dm_unit
                  ? FUNC1 (d2)->name : FUNC0 (d2)->name)) == 0;
}