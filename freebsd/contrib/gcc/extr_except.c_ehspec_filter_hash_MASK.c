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
typedef  scalar_t__ tree ;
struct ttypes_filter {scalar_t__ t; } ;
typedef  int hashval_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 

__attribute__((used)) static hashval_t
FUNC3 (const void *pentry)
{
  const struct ttypes_filter *entry = (const struct ttypes_filter *) pentry;
  hashval_t h = 0;
  tree list;

  for (list = entry->t; list ; list = FUNC0 (list))
    h = (h << 5) + (h >> 27) + FUNC1 (FUNC2 (list));
  return h;
}