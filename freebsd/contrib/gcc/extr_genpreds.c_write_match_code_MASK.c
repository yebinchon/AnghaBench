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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 char* FUNC3 (char const**) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 

__attribute__((used)) static void
FUNC5 (const char *path, const char *codes)
{
  const char *code;

  while ((code = FUNC3 (&codes)) != 0)
    {
      FUNC1 ("GET_CODE (", stdout);
      FUNC4 (path);
      FUNC1 (") == ", stdout);
      while (code < codes)
	{
	  FUNC2 (FUNC0 (*code));
	  code++;
	}
      
      if (*codes == ',')
	FUNC1 (" || ", stdout);
    }
}