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
struct opt_info {scalar_t__ insns_with_var_to_expand; scalar_t__ insns_to_split; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct opt_info*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  release_var_copies ; 

__attribute__((used)) static void
FUNC3 (struct opt_info *opt_info)
{
  if (opt_info->insns_to_split)
    FUNC1 (opt_info->insns_to_split);
  if (opt_info->insns_with_var_to_expand)
    {
      FUNC2 (opt_info->insns_with_var_to_expand, 
                     release_var_copies, NULL);
      FUNC1 (opt_info->insns_with_var_to_expand);
    }
  FUNC0 (opt_info);
}