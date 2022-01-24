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
typedef  int bfd_size_type ;
typedef  int /*<<< orphan*/  bfd ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char) ; 
 char* FUNC1 (int /*<<< orphan*/ *,int) ; 
 char* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char*,char*) ; 
 int FUNC4 (char*) ; 

__attribute__((used)) static char *
FUNC5 (bfd *abfd, char *suffix)
{
  bfd_size_type size;
  char *buf;
  char *p;

  size = (FUNC4 (FUNC2 (abfd))
	  + FUNC4 (suffix)
	  + sizeof "_binary__");

  buf = FUNC1 (abfd, size);
  if (buf == NULL)
    return "";

  FUNC3 (buf, "_binary_%s_%s", FUNC2 (abfd), suffix);

  /* Change any non-alphanumeric characters to underscores.  */
  for (p = buf; *p; p++)
    if (! FUNC0 (*p))
      *p = '_';

  return buf;
}