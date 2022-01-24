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
typedef  int /*<<< orphan*/  tree ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * rs6000_builtin_types ; 

__attribute__((used)) static inline tree
FUNC1 (int id)
{
  tree t;
  t = rs6000_builtin_types[id < 0 ? ~id : id];
  return id < 0 ? FUNC0 (t) : t;
}