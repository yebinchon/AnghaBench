#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct symtab_and_line {TYPE_2__* symtab; } ;
struct frame_info {int dummy; } ;
struct TYPE_4__ {TYPE_1__* objfile; int /*<<< orphan*/  filename; } ;
struct TYPE_3__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct frame_info* deprecated_selected_frame ; 
 int /*<<< orphan*/  FUNC1 (struct frame_info*,struct symtab_and_line*) ; 
 struct frame_info* FUNC2 (struct frame_info*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

int
FUNC4 (struct frame_info *fi, int level)
{
  struct symtab_and_line sal;

  for (; fi != NULL; level += 1, fi = FUNC2 (fi))
    {
      FUNC1 (fi, &sal);
      if (sal.symtab && !FUNC3 (sal.symtab->filename))
	{
#if defined(__alpha__) && defined(__osf__) && !defined(VXWORKS_TARGET)
	  /* libpthread.so contains some debugging information that prevents us
	     from finding the right frame */

	  if (sal.symtab->objfile &&
	      DEPRECATED_STREQ (sal.symtab->objfile->name, "/usr/shlib/libpthread.so"))
	    continue;
#endif
	  deprecated_selected_frame = fi;
	  break;
	}
    }

  return level;
}