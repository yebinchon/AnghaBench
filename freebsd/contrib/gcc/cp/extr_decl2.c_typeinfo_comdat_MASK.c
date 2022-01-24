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
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC5 (tree type)
{
  tree binfo, base_binfo;
  int j;

  if (FUNC4 ("weak", FUNC2 (type)))
    return true;
  
  for (binfo = FUNC3 (type), j = 0;
	FUNC0 (binfo, j, base_binfo); ++j)
    {
      if (FUNC5 (FUNC1 (base_binfo)))
	return true;
    }

  return false;
}