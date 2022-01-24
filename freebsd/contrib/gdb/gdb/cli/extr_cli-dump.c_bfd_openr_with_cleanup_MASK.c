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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  bfd_object ; 
 int /*<<< orphan*/ * FUNC3 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static bfd *
FUNC6 (const char *filename, const char *target)
{
  bfd *ibfd;

  ibfd = FUNC3 (filename, target);
  if (ibfd == NULL)
    FUNC4 ("Failed to open %s: %s.", filename, 
	   FUNC1 (FUNC2 ()));

  FUNC5 (ibfd);
  if (!FUNC0 (ibfd, bfd_object))
    FUNC4 ("'%s' is not a recognized file format.", filename);

  return ibfd;
}