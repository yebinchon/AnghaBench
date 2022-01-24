#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  mask; } ;
struct TYPE_8__ {TYPE_1__ r; } ;
struct TYPE_9__ {TYPE_2__ record; } ;
struct TYPE_10__ {TYPE_3__ r; } ;
typedef  TYPE_4__ unw_rec_list ;

/* Variables and functions */
 TYPE_4__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  prologue ; 

__attribute__((used)) static unw_rec_list *
FUNC2 ()
{
  unw_rec_list *ptr = FUNC0 (prologue);
  FUNC1 (&ptr->r.record.r.mask, 0, sizeof (ptr->r.record.r.mask));
  return ptr;
}