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
struct gdbarch {int dummy; } ;
typedef  int /*<<< orphan*/  bfd ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gdbarch*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 struct gdbarch* FUNC2 (int /*<<< orphan*/ *) ; 

void
FUNC3 (bfd *abfd)
{
  struct gdbarch *gdbarch;

  gdbarch = FUNC2 (abfd);
  if (gdbarch == NULL)
    FUNC1 ("Architecture of file not recognized.\n");
  FUNC0 (gdbarch);
}