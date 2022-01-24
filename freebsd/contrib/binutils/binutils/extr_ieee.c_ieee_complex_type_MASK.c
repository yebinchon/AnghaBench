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
struct ieee_handle {TYPE_2__* type_stack; int /*<<< orphan*/  complex_double_index; int /*<<< orphan*/  complex_float_index; } ;
typedef  int /*<<< orphan*/  bfd_boolean ;
struct TYPE_3__ {int /*<<< orphan*/  indx; } ;
struct TYPE_4__ {TYPE_1__ type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee_handle*,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee_handle*,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee_handle*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee_handle*,char) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static bfd_boolean
FUNC6 (void *p, unsigned int size)
{
  struct ieee_handle *info = (struct ieee_handle *) p;
  char code;

  switch (size)
    {
    case 4:
      if (info->complex_float_index != 0)
	return FUNC3 (info, info->complex_float_index, size * 2,
			       FALSE, FALSE);
      code = 'c';
      break;
    case 12:
    case 16:
      /* These cases can be output by gcc -gstabs.  Outputting the
         wrong type is better than crashing.  */
    case 8:
      if (info->complex_double_index != 0)
	return FUNC3 (info, info->complex_double_index, size * 2,
			       FALSE, FALSE);
      code = 'd';
      break;
    default:
      FUNC1 (stderr, FUNC0("IEEE unsupported complex type size %u\n"), size);
      return FALSE;
    }

  /* FIXME: I don't know what the string is for.  */
  if (! FUNC2 (info, size * 2, FALSE, FALSE)
      || ! FUNC5 (info, code)
      || ! FUNC4 (info, ""))
    return FALSE;

  if (size == 4)
    info->complex_float_index = info->type_stack->type.indx;
  else
    info->complex_double_index = info->type_stack->type.indx;

  return TRUE;
}