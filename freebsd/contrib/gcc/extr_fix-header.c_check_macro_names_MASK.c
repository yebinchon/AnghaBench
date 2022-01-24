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
typedef  scalar_t__* namelist ;
typedef  int /*<<< orphan*/  cpp_reader ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,unsigned char const*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*) ; 
 size_t FUNC2 (scalar_t__*) ; 

__attribute__((used)) static void
FUNC3 (cpp_reader *pfile, namelist names)
{
  size_t len;
  while (*names)
    {
      len = FUNC2 (names);
      if (FUNC0 (pfile, (const unsigned char *)names, len))
	FUNC1 (names);
      names += len + 1;
    }
}