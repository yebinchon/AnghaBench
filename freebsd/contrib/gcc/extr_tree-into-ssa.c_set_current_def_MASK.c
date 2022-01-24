#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  void* tree ;
struct TYPE_4__ {void* current_def; } ;
struct TYPE_3__ {void* current_def; } ;

/* Variables and functions */
 scalar_t__ SSA_NAME ; 
 scalar_t__ FUNC0 (void*) ; 
 TYPE_2__* FUNC1 (void*) ; 
 TYPE_1__* FUNC2 (void*) ; 

void
FUNC3 (tree var, tree def)
{
  if (FUNC0 (var) == SSA_NAME)
    FUNC1 (var)->current_def = def;
  else
    FUNC2 (var)->current_def = def;
}