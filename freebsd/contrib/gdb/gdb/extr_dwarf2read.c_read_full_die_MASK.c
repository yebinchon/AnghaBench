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
struct dwarf2_cu {int dummy; } ;
struct die_info {unsigned int abbrev; unsigned int offset; int num_attrs; struct attribute* attrs; int /*<<< orphan*/ * type; scalar_t__ tag; } ;
struct attribute {int dummy; } ;
struct abbrev_info {int num_attrs; int has_children; int /*<<< orphan*/ * attrs; scalar_t__ tag; } ;
typedef  int /*<<< orphan*/  bfd ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ *) ; 
 struct abbrev_info* FUNC1 (unsigned int,struct dwarf2_cu*) ; 
 struct die_info* FUNC2 () ; 
 char* dwarf_info_buffer ; 
 int /*<<< orphan*/  FUNC3 (char*,unsigned int,char*) ; 
 char* FUNC4 (struct attribute*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,struct dwarf2_cu*) ; 
 unsigned int FUNC5 (int /*<<< orphan*/ *,char*,unsigned int*) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static char *
FUNC7 (struct die_info **diep, bfd *abfd, char *info_ptr,
	       struct dwarf2_cu *cu, int *has_children)
{
  unsigned int abbrev_number, bytes_read, i, offset;
  struct abbrev_info *abbrev;
  struct die_info *die;

  offset = info_ptr - dwarf_info_buffer;
  abbrev_number = FUNC5 (abfd, info_ptr, &bytes_read);
  info_ptr += bytes_read;
  if (!abbrev_number)
    {
      die = FUNC2 ();
      die->tag = 0;
      die->abbrev = abbrev_number;
      die->type = NULL;
      *diep = die;
      *has_children = 0;
      return info_ptr;
    }

  abbrev = FUNC1 (abbrev_number, cu);
  if (!abbrev)
    {
      FUNC3 ("Dwarf Error: could not find abbrev number %d [in module %s]",
	     abbrev_number, 
	     FUNC0 (abfd));
    }
  die = FUNC2 ();
  die->offset = offset;
  die->tag = abbrev->tag;
  die->abbrev = abbrev_number;
  die->type = NULL;

  die->num_attrs = abbrev->num_attrs;
  die->attrs = (struct attribute *)
    FUNC6 (die->num_attrs * sizeof (struct attribute));

  for (i = 0; i < abbrev->num_attrs; ++i)
    {
      info_ptr = FUNC4 (&die->attrs[i], &abbrev->attrs[i],
				 abfd, info_ptr, cu);
    }

  *diep = die;
  *has_children = abbrev->has_children;
  return info_ptr;
}