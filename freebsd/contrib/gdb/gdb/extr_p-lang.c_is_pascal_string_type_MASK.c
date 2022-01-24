#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct type {int dummy; } ;
struct TYPE_2__ {char* name; } ;

/* Variables and functions */
 int TARGET_CHAR_BIT ; 
 scalar_t__ FUNC0 (struct type*) ; 
 scalar_t__ TYPE_CODE_STRUCT ; 
 TYPE_1__* FUNC1 (struct type*) ; 
 int FUNC2 (struct type*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct type*,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (struct type*) ; 
 scalar_t__ FUNC6 (char*,char*) ; 

int
FUNC7 (struct type *type,int *length_pos,
                       int *length_size, int *string_pos, int *char_size,
		       char **arrayname)
{
  if (FUNC0 (type) == TYPE_CODE_STRUCT)
    {
      /* Old Borland type pascal strings from Free Pascal Compiler.  */
      /* Two fields: length and st.  */
      if (FUNC5 (type) == 2 
          && FUNC6 (FUNC1 (type)[0].name, "length") == 0 
          && FUNC6 (FUNC1 (type)[1].name, "st") == 0)
        {
          if (length_pos)
	    *length_pos = FUNC2 (type, 0) / TARGET_CHAR_BIT;
          if (length_size)
	    *length_size = FUNC4 (FUNC3 (type, 0));
          if (string_pos)
	    *string_pos = FUNC2 (type, 1) / TARGET_CHAR_BIT;
          if (char_size)
	    *char_size = 1;
 	  if (arrayname)
	    *arrayname = FUNC1 (type)[1].name;
         return 2;
        };
      /* GNU pascal strings.  */
      /* Three fields: Capacity, length and schema$ or _p_schema.  */
      if (FUNC5 (type) == 3
          && FUNC6 (FUNC1 (type)[0].name, "Capacity") == 0
          && FUNC6 (FUNC1 (type)[1].name, "length") == 0)
        {
          if (length_pos)
	    *length_pos = FUNC2 (type, 1) / TARGET_CHAR_BIT;
          if (length_size)
	    *length_size = FUNC4 (FUNC3 (type, 1));
          if (string_pos)
	    *string_pos = FUNC2 (type, 2) / TARGET_CHAR_BIT;
          /* FIXME: how can I detect wide chars in GPC ?? */
          if (char_size)
	    *char_size = 1;
 	  if (arrayname)
	    *arrayname = FUNC1 (type)[2].name;
         return 3;
        };
    }
  return 0;
}