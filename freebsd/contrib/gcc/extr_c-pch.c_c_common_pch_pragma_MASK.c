#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  cpp_reader ;
struct TYPE_2__ {int /*<<< orphan*/  warn_invalid_pch; int /*<<< orphan*/  preprocessed; } ;

/* Variables and functions */
 int O_BINARY ; 
 int O_RDONLY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const*,int,char const*) ; 
 int FUNC1 (int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int FUNC7 (char const*,int,int) ; 

void
FUNC8 (cpp_reader *pfile, const char *name)
{
  int fd;

  if (!FUNC3 (pfile)->preprocessed)
    {
      FUNC4 ("pch_preprocess pragma should only be used with -fpreprocessed");
      FUNC6 ("use #include instead");
      return;
    }

  fd = FUNC7 (name, O_RDONLY | O_BINARY, 0666);
  if (fd == -1)
    FUNC5 ("%s: couldn%'t open PCH file: %m", name);

  if (FUNC1 (pfile, name, fd) != 1)
    {
      if (!FUNC3 (pfile)->warn_invalid_pch)
	FUNC6 ("use -Winvalid-pch for more information");
      FUNC5 ("%s: PCH file was invalid", name);
    }

  FUNC0 (pfile, name, fd, name);

  FUNC2 (fd);
}