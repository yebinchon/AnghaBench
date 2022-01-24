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
struct type {int dummy; } ;
struct objfile {int dummy; } ;
struct dwarf2_cu {scalar_t__ language; struct objfile* objfile; } ;
struct die_info {struct type* type; } ;
struct attribute {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DW_AT_byte_size ; 
 int /*<<< orphan*/  DW_AT_string_length ; 
 unsigned int FUNC0 (struct attribute*) ; 
 int /*<<< orphan*/  FT_CHAR ; 
 int /*<<< orphan*/  FT_INTEGER ; 
 struct type* FUNC1 (int /*<<< orphan*/ *,struct type*,int,unsigned int) ; 
 struct type* FUNC2 (struct type*,struct type*) ; 
 struct attribute* FUNC3 (struct die_info*,int /*<<< orphan*/ ,struct dwarf2_cu*) ; 
 struct type* FUNC4 (struct objfile*,int /*<<< orphan*/ ,struct dwarf2_cu*) ; 
 scalar_t__ language_fortran ; 

__attribute__((used)) static void
FUNC5 (struct die_info *die, struct dwarf2_cu *cu)
{
  struct objfile *objfile = cu->objfile;
  struct type *type, *range_type, *index_type, *char_type;
  struct attribute *attr;
  unsigned int length;

  if (die->type)
    {
      return;
    }

  attr = FUNC3 (die, DW_AT_string_length, cu);
  if (attr)
    {
      length = FUNC0 (attr);
    }
  else
    {
      /* check for the DW_AT_byte_size attribute */
      attr = FUNC3 (die, DW_AT_byte_size, cu);
      if (attr)
        {
          length = FUNC0 (attr);
        }
      else
        {
          length = 1;
        }
    }
  index_type = FUNC4 (objfile, FT_INTEGER, cu);
  range_type = FUNC1 (NULL, index_type, 1, length);
  if (cu->language == language_fortran)
    {
      /* Need to create a unique string type for bounds
         information */
      type = FUNC2 (0, range_type);
    }
  else
    {
      char_type = FUNC4 (objfile, FT_CHAR, cu);
      type = FUNC2 (char_type, range_type);
    }
  die->type = type;
}