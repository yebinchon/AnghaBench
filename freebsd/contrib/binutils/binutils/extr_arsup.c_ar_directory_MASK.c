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
struct list {int dummy; } ;
typedef  int /*<<< orphan*/  bfd ;

/* Variables and functions */
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  ar_directory_doer ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,struct list*) ; 
 int /*<<< orphan*/ * FUNC6 (char*,char*) ; 
 scalar_t__ outfile ; 
 int /*<<< orphan*/  stderr ; 
 scalar_t__ stdout ; 

void
FUNC7 (char *ar_name, struct list *list, char *output)
{
  bfd *arch;

  arch = FUNC6 (ar_name, (char *) NULL);
  if (output)
    {
      outfile = FUNC3(output,"w");
      if (outfile == 0)
	{
	  outfile = stdout;
	  FUNC4 (stderr,FUNC0("Can't open file %s\n"), output);
	  output = 0;
	}
    }
  else
    outfile = stdout;

  FUNC5 (arch, ar_directory_doer, list);

  FUNC1 (arch);

  if (output)
   FUNC2 (outfile);
}