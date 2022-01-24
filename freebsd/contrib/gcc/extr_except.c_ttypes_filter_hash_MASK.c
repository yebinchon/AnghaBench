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
struct ttypes_filter {int /*<<< orphan*/  t; } ;
typedef  int /*<<< orphan*/  hashval_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static hashval_t
FUNC1 (const void *pentry)
{
  const struct ttypes_filter *entry = (const struct ttypes_filter *) pentry;
  return FUNC0 (entry->t);
}