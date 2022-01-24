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
struct regcache {int dummy; } ;
struct gdbarch {int dummy; } ;
typedef  enum type_code { ____Placeholder_type_code } type_code ;
typedef  enum return_value_convention { ____Placeholder_return_value_convention } return_value_convention ;

/* Variables and functions */
 int RETURN_VALUE_REGISTER_CONVENTION ; 
 int RETURN_VALUE_STRUCT_CONVENTION ; 
 int FUNC0 (struct type*) ; 
 int TYPE_CODE_STRUCT ; 
 int TYPE_CODE_UNION ; 
 int /*<<< orphan*/  FUNC1 (struct type*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct type*) ; 
 struct type* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct gdbarch*,struct type*,struct regcache*,void*) ; 
 int /*<<< orphan*/  FUNC5 (struct gdbarch*,struct type*) ; 
 int /*<<< orphan*/  FUNC6 (struct gdbarch*,struct type*,struct regcache*,void const*) ; 

__attribute__((used)) static enum return_value_convention
FUNC7 (struct gdbarch *gdbarch, struct type *type,
		   struct regcache *regcache, void *readbuf,
		   const void *writebuf)
{
  enum type_code code = FUNC0 (type);

  if ((code == TYPE_CODE_STRUCT || code == TYPE_CODE_UNION)
      && !FUNC5 (gdbarch, type))
    return RETURN_VALUE_STRUCT_CONVENTION;

  /* This special case is for structures consisting of a single
     `float' or `double' member.  These structures are returned in
     %st(0).  For these structures, we call ourselves recursively,
     changing TYPE into the type of the first member of the structure.
     Since that should work for all structures that have only one
     member, we don't bother to check the member's type here.  */
  if (code == TYPE_CODE_STRUCT && FUNC2 (type) == 1)
    {
      type = FUNC3 (FUNC1 (type, 0));
      return FUNC7 (gdbarch, type, regcache, readbuf, writebuf);
    }

  if (readbuf)
    FUNC4 (gdbarch, type, regcache, readbuf);
  if (writebuf)
    FUNC6 (gdbarch, type, regcache, writebuf);

  return RETURN_VALUE_REGISTER_CONVENTION;
}