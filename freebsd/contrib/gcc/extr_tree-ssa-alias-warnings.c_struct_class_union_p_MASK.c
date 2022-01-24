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
 scalar_t__ QUAL_UNION_TYPE ; 
 scalar_t__ RECORD_TYPE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ UNION_TYPE ; 

__attribute__((used)) static bool
FUNC1 (tree type)
{
  return (FUNC0 (type) == RECORD_TYPE
	  || FUNC0 (type) == UNION_TYPE
	  || FUNC0 (type) == QUAL_UNION_TYPE);
}