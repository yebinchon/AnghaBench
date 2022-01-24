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
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ TARGET_BIG_ENDIAN ; 
 scalar_t__ TARGET_NEWABI ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool
FUNC2 (tree valtype)
{
  tree fields[2];

  return (TARGET_NEWABI
	  && TARGET_BIG_ENDIAN
	  && FUNC0 (valtype)
	  && FUNC1 (valtype, fields) == 0);
}