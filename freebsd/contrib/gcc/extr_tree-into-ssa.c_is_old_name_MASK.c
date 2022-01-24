#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tree ;
struct TYPE_2__ {unsigned int n_bits; } ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,unsigned int) ; 
 TYPE_1__* new_ssa_names ; 
 int /*<<< orphan*/  old_ssa_names ; 

__attribute__((used)) static inline bool
FUNC2 (tree name)
{
  unsigned ver = FUNC0 (name);
  return ver < new_ssa_names->n_bits && FUNC1 (old_ssa_names, ver);
}