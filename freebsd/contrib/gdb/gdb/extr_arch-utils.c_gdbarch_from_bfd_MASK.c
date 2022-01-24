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
struct gdbarch_info {int /*<<< orphan*/ * abfd; } ;
struct gdbarch {int dummy; } ;
typedef  int /*<<< orphan*/  bfd ;

/* Variables and functions */
 struct gdbarch* current_gdbarch ; 
 struct gdbarch* FUNC0 (struct gdbarch_info) ; 
 int /*<<< orphan*/  FUNC1 (struct gdbarch_info*) ; 

struct gdbarch *
FUNC2 (bfd *abfd)
{
  struct gdbarch *old_gdbarch = current_gdbarch;
  struct gdbarch *new_gdbarch;
  struct gdbarch_info info;

  FUNC1 (&info);
  info.abfd = abfd;
  return FUNC0 (info);
}