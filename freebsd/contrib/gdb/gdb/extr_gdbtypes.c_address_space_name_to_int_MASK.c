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

/* Variables and functions */
 int TYPE_FLAG_CODE_SPACE ; 
 int TYPE_FLAG_DATA_SPACE ; 
 struct gdbarch* current_gdbarch ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 scalar_t__ FUNC1 (struct gdbarch*,char*,int*) ; 
 scalar_t__ FUNC2 (struct gdbarch*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 

extern int
FUNC4 (char *space_identifier)
{
  struct gdbarch *gdbarch = current_gdbarch;
  int type_flags;
  /* Check for known address space delimiters. */
  if (!FUNC3 (space_identifier, "code"))
    return TYPE_FLAG_CODE_SPACE;
  else if (!FUNC3 (space_identifier, "data"))
    return TYPE_FLAG_DATA_SPACE;
  else if (FUNC2 (gdbarch)
           && FUNC1 (gdbarch,
							space_identifier,
							&type_flags))
    return type_flags;
  else
    FUNC0 ("Unknown address space specifier: \"%s\"", space_identifier);
}