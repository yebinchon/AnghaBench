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
typedef  int /*<<< orphan*/  bfd ;

/* Variables and functions */
 int /*<<< orphan*/  bfd_archive ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/ * FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (char*) ; 
 int return_code ; 
 int /*<<< orphan*/  target ; 

__attribute__((used)) static void
FUNC7 (char *filename)
{
  bfd *file;

  if (FUNC6 (filename) < 1)
    {
      return_code = 1;
      return;
    }

  file = FUNC3 (filename, target);
  if (file == NULL)
    {
      FUNC2 (filename);
      return_code = 1;
      return;
    }

  if (FUNC0 (file, bfd_archive))
    FUNC4 (file);
  else
    FUNC5 (file);

  if (!FUNC1 (file))
    {
      FUNC2 (filename);
      return_code = 1;
      return;
    }
}