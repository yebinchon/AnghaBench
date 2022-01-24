#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ufile_ptr ;
typedef  int /*<<< orphan*/  bfd_boolean ;
typedef  int /*<<< orphan*/  bfd ;
struct TYPE_4__ {size_t size; int alignment_power; int /*<<< orphan*/  filepos; } ;
typedef  TYPE_1__ asection ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  SEC_HAS_CONTENTS ; 
 char* FUNC0 (int /*<<< orphan*/ *,size_t) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,char*,int) ; 
 int FUNC6 (char*) ; 

bfd_boolean
FUNC7 (bfd *abfd,
				 char *name,
				 size_t size,
				 ufile_ptr filepos)
{
  char buf[100];
  char *threaded_name;
  size_t len;
  asection *sect;

  /* Build the section name.  */

  FUNC5 (buf, "%s/%d", name, FUNC2 (abfd));
  len = FUNC6 (buf) + 1;
  threaded_name = FUNC0 (abfd, len);
  if (threaded_name == NULL)
    return FALSE;
  FUNC4 (threaded_name, buf, len);

  sect = FUNC1 (abfd, threaded_name,
					     SEC_HAS_CONTENTS);
  if (sect == NULL)
    return FALSE;
  sect->size = size;
  sect->filepos = filepos;
  sect->alignment_power = 2;

  return FUNC3 (abfd, name, sect);
}