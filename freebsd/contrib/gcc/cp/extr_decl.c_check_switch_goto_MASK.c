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
struct cp_binding_level {int /*<<< orphan*/  names; } ;

/* Variables and functions */
 int /*<<< orphan*/  NULL_TREE ; 
 int FUNC0 (int /*<<< orphan*/ ,struct cp_binding_level*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool
FUNC1 (struct cp_binding_level* level)
{
  return FUNC0 (NULL_TREE, level, level->names, false, NULL);
}