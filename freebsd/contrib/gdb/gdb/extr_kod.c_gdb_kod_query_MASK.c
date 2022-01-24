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
typedef  int LONGEST ;

/* Variables and functions */
 int /*<<< orphan*/  TARGET_OBJECT_KOD ; 
 int /*<<< orphan*/  current_target ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC4 (char *arg, char *result, int *maxsiz)
{
  LONGEST bufsiz = 0;

  /* Check if current target has remote_query capabilities.  If not,
     it does not have kod either.  */
  bufsiz = FUNC3 (&current_target, TARGET_OBJECT_KOD,
				NULL, NULL, 0, 0);
  if (bufsiz < 0)
    {
      FUNC1 (result,
              "ERR: Kernel Object Display not supported by current target\n");
      return;
    }

  /* Just get the maximum buffer size.  */

  /* Check if *we* were called just for getting the buffer size.  */
  if (*maxsiz == 0)
    {
      *maxsiz = bufsiz;
      FUNC1 (result, "OK");
      return;
    }

  /* Check if caller can handle a buffer this large, if not, adjust.  */
  if (bufsiz > *maxsiz)
    bufsiz = *maxsiz;

  /* See if buffer can hold the query (usually it can, as the query is
     short).  */
  if (FUNC2 (arg) >= bufsiz)
    FUNC0 ("kod: query argument too long");

  /* Send actual request.  */
  if (FUNC3 (&current_target, TARGET_OBJECT_KOD,
			   arg, result, 0, bufsiz) < 0)
    FUNC1 (result, "ERR: remote query failed");
}