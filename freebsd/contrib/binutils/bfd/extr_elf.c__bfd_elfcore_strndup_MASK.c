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
 char* FUNC0 (int /*<<< orphan*/ *,size_t) ; 
 char* FUNC1 (char*,char,size_t) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,size_t) ; 

char *
FUNC3 (bfd *abfd, char *start, size_t max)
{
  char *dups;
  char *end = FUNC1 (start, '\0', max);
  size_t len;

  if (end == NULL)
    len = max;
  else
    len = end - start;

  dups = FUNC0 (abfd, len + 1);
  if (dups == NULL)
    return NULL;

  FUNC2 (dups, start, len);
  dups[len] = '\0';

  return dups;
}