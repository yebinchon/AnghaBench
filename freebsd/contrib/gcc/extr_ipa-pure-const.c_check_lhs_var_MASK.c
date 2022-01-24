#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tree ;
typedef  TYPE_1__* funct_state ;
struct TYPE_4__ {scalar_t__ pure_const_state; } ;

/* Variables and functions */
 scalar_t__ IPA_CONST ; 
 scalar_t__ IPA_PURE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2 (funct_state local, tree t)
{
  /* Memcmp and strlen can both trap and they are declared pure.
     Which seems to imply that we can apply the same rule here.  */
  if (FUNC1 (t)
      && local->pure_const_state == IPA_CONST)
    local->pure_const_state = IPA_PURE;
    
  FUNC0(local, t, true);
}