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
 int /*<<< orphan*/ * FUNC0 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 

__attribute__((used)) static bfd *
FUNC2 (const char *filename)
{
  bfd *abfd;

  abfd = FUNC0 (filename, "binary");
  if (! abfd)
    FUNC1 ("can't open `%s' for output", filename);

  return abfd;
}