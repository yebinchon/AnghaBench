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
struct value {int dummy; } ;
struct cleanup {int dummy; } ;
typedef  scalar_t__ CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct value*) ; 
 int /*<<< orphan*/  FUNC2 (struct value*) ; 
 scalar_t__ FUNC3 (struct value*) ; 
 int /*<<< orphan*/  FUNC4 (struct value*) ; 
 int /*<<< orphan*/  FUNC5 (struct cleanup*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,char*,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 struct cleanup* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  null_cleanup ; 
 struct value* FUNC10 (char*) ; 
 char* FUNC11 (char**,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (char*,char*) ; 
 int /*<<< orphan*/  FUNC13 (char*) ; 

__attribute__((used)) static void
FUNC14 (char *cmd, char *mode, char *file_format)
{
  struct cleanup *old_cleanups = FUNC9 (null_cleanup, NULL);
  struct value *val;
  char *filename;

  /* Open the file.  */
  filename = FUNC11 (&cmd, NULL);

  /* Find the value.  */
  if (cmd == NULL || *cmd == '\0')
    FUNC8 ("No value to %s.", *mode == 'a' ? "append" : "dump");
  val = FUNC10 (cmd);
  if (val == NULL)
    FUNC8 ("Invalid expression.");

  /* Have everything.  Open/write the data.  */
  if (file_format == NULL || FUNC12 (file_format, "binary") == 0)
    {
      FUNC7 (filename, mode, FUNC2 (val), 
			FUNC0 (FUNC4 (val)));
    }
  else
    {
      CORE_ADDR vaddr;

      if (FUNC3 (val))
	{
	  vaddr = FUNC1 (val);
	}
      else
	{
	  vaddr = 0;
	  FUNC13 ("value is not an lval: address assumed to be zero");
	}

      FUNC6 (filename, mode, file_format, vaddr, 
		     FUNC2 (val), 
		     FUNC0 (FUNC4 (val)));
    }

  FUNC5 (old_cleanups);
}