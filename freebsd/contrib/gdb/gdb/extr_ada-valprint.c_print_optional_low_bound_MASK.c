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
struct ui_file {int dummy; } ;
struct type {int dummy; } ;
typedef  int /*<<< orphan*/  LONGEST ;

/* Variables and functions */
 int FUNC0 (struct type*) ; 
#define  TYPE_CODE_ENUM 129 
 int TYPE_CODE_RANGE ; 
#define  TYPE_CODE_UNDEF 128 
 long FUNC1 (struct type*,int /*<<< orphan*/ ) ; 
 struct type* FUNC2 (struct type*) ; 
 long FUNC3 (struct type*) ; 
 struct type* FUNC4 (struct type*) ; 
 int /*<<< orphan*/  FUNC5 (struct type*,int /*<<< orphan*/ ,struct ui_file*) ; 
 struct type* builtin_type_long ; 
 int /*<<< orphan*/  FUNC6 (struct ui_file*,char*) ; 

__attribute__((used)) static int
FUNC7 (struct ui_file *stream, struct type *type)
{
  struct type *index_type;
  long low_bound;

  index_type = FUNC2 (type);
  low_bound = 0;

  if (index_type == NULL)
    return 0;
  if (FUNC0 (index_type) == TYPE_CODE_RANGE)
    {
      low_bound = FUNC3 (index_type);
      index_type = FUNC4 (index_type);
    }
  else
    return 0;

  switch (FUNC0 (index_type))
    {
    case TYPE_CODE_ENUM:
      if (low_bound == FUNC1 (index_type, 0))
	return 0;
      break;
    case TYPE_CODE_UNDEF:
      index_type = builtin_type_long;
      /* FALL THROUGH */
    default:
      if (low_bound == 1)
	return 0;
      break;
    }

  FUNC5 (index_type, (LONGEST) low_bound, stream);
  FUNC6 (stream, " => ");
  return 1;
}