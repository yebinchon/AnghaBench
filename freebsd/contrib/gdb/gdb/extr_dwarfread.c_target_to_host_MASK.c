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
struct objfile {int /*<<< orphan*/  obfd; } ;
typedef  int /*<<< orphan*/  bfd_byte ;
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  DIE_ID ; 
 int /*<<< orphan*/  DIE_NAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  symfile_complaints ; 

__attribute__((used)) static CORE_ADDR
FUNC5 (char *from, int nbytes, int signextend,	/* FIXME:  Unused */
		struct objfile *objfile)
{
  CORE_ADDR rtnval;

  switch (nbytes)
    {
    case 8:
      rtnval = FUNC2 (objfile->obfd, (bfd_byte *) from);
      break;
    case 4:
      rtnval = FUNC1 (objfile->obfd, (bfd_byte *) from);
      break;
    case 2:
      rtnval = FUNC0 (objfile->obfd, (bfd_byte *) from);
      break;
    case 1:
      rtnval = FUNC3 (objfile->obfd, (bfd_byte *) from);
      break;
    default:
      FUNC4 (&symfile_complaints,
		 "DIE @ 0x%x \"%s\", no bfd support for %d byte data object",
		 DIE_ID, DIE_NAME, nbytes);
      rtnval = 0;
      break;
    }
  return (rtnval);
}