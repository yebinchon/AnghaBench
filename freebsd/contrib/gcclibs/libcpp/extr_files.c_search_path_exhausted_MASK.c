#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/ * (* missing_header_cb ) (TYPE_2__*,char const*,int /*<<< orphan*/ **) ;
struct TYPE_8__ {int /*<<< orphan*/ * (* missing_header ) (TYPE_2__*,char const*,int /*<<< orphan*/ **) ;} ;
struct TYPE_9__ {TYPE_1__ cb; } ;
typedef  TYPE_2__ cpp_reader ;
struct TYPE_10__ {int /*<<< orphan*/ * name; int /*<<< orphan*/ * path; int /*<<< orphan*/ * dir; } ;
typedef  TYPE_4__ _cpp_file ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 scalar_t__ FUNC1 (TYPE_4__*) ; 

__attribute__((used)) static bool
FUNC2 (cpp_reader *pfile, const char *header, _cpp_file *file)
{
  missing_header_cb func = pfile->cb.missing_header;

  /* When the regular search path doesn't work, try context dependent
     headers search paths.  */
  if (func
      && file->dir == NULL)
    {
      if ((file->path = func (pfile, header, &file->dir)) != NULL)
	{
	  if (FUNC1 (file))
	    return true;
	  FUNC0 ((void *)file->path);
	}
      file->path = file->name;
    }

  return false;
}