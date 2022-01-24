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
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int status ; 

__attribute__((used)) static void
FUNC6 (bfd *ibfd, bfd *obfd)
{
  const char *err;

  /* Allow the BFD backend to copy any private data it understands
     from the input section to the output section.  */
  if (! FUNC1 (ibfd, obfd))
    {
      err = FUNC0("private header data");
      goto loser;
    }

  /* All went well.  */
  return;

loser:
  FUNC5 (FUNC0("%s: error in %s: %s"),
	     FUNC4 (ibfd),
	     err, FUNC2 (FUNC3 ()));
  status = 1;
}