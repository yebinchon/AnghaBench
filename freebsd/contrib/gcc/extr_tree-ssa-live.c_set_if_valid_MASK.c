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
typedef  int /*<<< orphan*/  var_map ;
typedef  int /*<<< orphan*/  tree ;
typedef  int /*<<< orphan*/  bitmap ;

/* Variables and functions */
 int NO_PARTITION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void
FUNC2 (var_map map, bitmap vec, tree var)
{
  int p = FUNC1 (map, var);
  if (p != NO_PARTITION)
    FUNC0 (vec, p);
}