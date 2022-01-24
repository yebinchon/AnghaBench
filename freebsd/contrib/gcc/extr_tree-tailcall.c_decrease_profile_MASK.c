#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ gcov_type ;
typedef  TYPE_1__* edge ;
typedef  TYPE_2__* basic_block ;
struct TYPE_8__ {scalar_t__ count; scalar_t__ frequency; int /*<<< orphan*/  succs; } ;
struct TYPE_7__ {scalar_t__ count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_1__* FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 

__attribute__((used)) static void
FUNC4 (basic_block bb, gcov_type count, int frequency)
{
  edge e;
  bb->count -= count;
  if (bb->count < 0)
    bb->count = 0;
  bb->frequency -= frequency;
  if (bb->frequency < 0)
    bb->frequency = 0;
  if (!FUNC3 (bb))
    {
      FUNC1 (!FUNC0 (bb->succs));
      return;
    }
  e = FUNC2 (bb);
  e->count -= count;
  if (e->count < 0)
    e->count = 0;
}