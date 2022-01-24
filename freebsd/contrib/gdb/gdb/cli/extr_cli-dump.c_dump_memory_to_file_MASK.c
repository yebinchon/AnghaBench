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
struct cleanup {int dummy; } ;
typedef  scalar_t__ ULONGEST ;
typedef  scalar_t__ CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cleanup*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char*,scalar_t__,void*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,void*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 struct cleanup* FUNC4 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  null_cleanup ; 
 scalar_t__ FUNC5 (char*) ; 
 char* FUNC6 (char**,int /*<<< orphan*/ *) ; 
 char* FUNC7 (char**,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,void*,scalar_t__) ; 
 int /*<<< orphan*/  xfree ; 
 void* FUNC10 (scalar_t__) ; 

__attribute__((used)) static void
FUNC11 (char *cmd, char *mode, char *file_format)
{
  struct cleanup *old_cleanups = FUNC4 (null_cleanup, NULL);
  CORE_ADDR lo;
  CORE_ADDR hi;
  ULONGEST count;
  char *filename;
  void *buf;
  char *lo_exp;
  char *hi_exp;
  int len;

  /* Open the file.  */
  filename = FUNC7 (&cmd, NULL);

  /* Find the low address.  */
  if (cmd == NULL || *cmd == '\0')
    FUNC3 ("Missing start address.");
  lo_exp = FUNC6 (&cmd, NULL);

  /* Find the second address - rest of line.  */
  if (cmd == NULL || *cmd == '\0')
    FUNC3 ("Missing stop address.");
  hi_exp = cmd;

  lo = FUNC5 (lo_exp);
  hi = FUNC5 (hi_exp);
  if (hi <= lo)
    FUNC3 ("Invalid memory address range (start >= end).");
  count = hi - lo;

  /* FIXME: Should use read_memory_partial() and a magic blocking
     value.  */
  buf = FUNC10 (count);
  FUNC4 (xfree, buf);
  FUNC9 (lo, buf, count);
  
  /* Have everything.  Open/write the data.  */
  if (file_format == NULL || FUNC8 (file_format, "binary") == 0)
    {
      FUNC2 (filename, mode, buf, count);
    }
  else
    {
      FUNC1 (filename, mode, file_format, lo, buf, count);
    }

  FUNC0 (old_cleanups);
}