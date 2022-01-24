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
struct value {int dummy; } ;
struct type {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct type*) ; 
 int FUNC1 (struct type*,int) ; 
 int FUNC2 (struct type*,int) ; 
 struct type* FUNC3 (struct type*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct value*) ; 
 struct value* FUNC5 (struct value*,int /*<<< orphan*/ ,int,int,int,struct type*) ; 
 struct value* FUNC6 (struct value*,int,int,struct type*) ; 

struct value *
FUNC7 (struct value *arg1, int offset, int fieldno,
			   struct type *arg_type)
{
  struct value *v;
  struct type *type;

  FUNC0 (arg_type);
  type = FUNC3 (arg_type, fieldno);

  /* Handle packed fields */

  if (FUNC2 (arg_type, fieldno) != 0)
    {
      int bit_pos = FUNC1 (arg_type, fieldno);
      int bit_size = FUNC2 (arg_type, fieldno);

      return FUNC5 (arg1, FUNC4 (arg1),
					     offset + bit_pos / 8,
					     bit_pos % 8, bit_size, type);
    }
  else
    return FUNC6 (arg1, offset, fieldno, arg_type);
}