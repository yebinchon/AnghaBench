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
 scalar_t__ TARGET_MS_BITFIELD_LAYOUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC2 (tree record_type)
{
  return (TARGET_MS_BITFIELD_LAYOUT &&
	  !FUNC1 ("gcc_struct", FUNC0 (record_type)))
    || FUNC1 ("ms_struct", FUNC0 (record_type));
}