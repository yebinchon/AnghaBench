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
struct TYPE_5__ {scalar_t__ type; int /*<<< orphan*/  min; } ;
typedef  TYPE_1__ value_range_t ;
typedef  int /*<<< orphan*/  tree ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ VR_UNDEFINED ; 
 scalar_t__ VR_VARYING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int FUNC4 (int /*<<< orphan*/ ,TYPE_1__*) ; 

__attribute__((used)) static inline bool
FUNC5 (value_range_t *vr)
{
  tree zero;

  FUNC2 (vr->type != VR_UNDEFINED
              && vr->type != VR_VARYING
	      && !FUNC3 (vr));

  zero = FUNC1 (FUNC0 (vr->min), 0);
  return (FUNC4 (zero, vr) == 1);
}