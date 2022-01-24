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
typedef  int /*<<< orphan*/  ULONGEST ;

/* Variables and functions */
 int IA64_FR8_REGNUM ; 
 int IA64_GR8_REGNUM ; 
 int MAX_REGISTER_SIZE ; 
 int FUNC0 (struct type*) ; 
 int /*<<< orphan*/  builtin_type_ia64_ext ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,char*,struct type*) ; 
 struct type* FUNC2 (int /*<<< orphan*/ *,int) ; 
 struct type* FUNC3 (struct type*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (struct regcache*,int,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct regcache*,int,int /*<<< orphan*/ *) ; 

void
FUNC7 (struct type *type, struct regcache *regcache, void *valbuf)
{
  struct type *float_elt_type;

  float_elt_type = FUNC3 (type);
  if (float_elt_type != NULL)
    {
      char from[MAX_REGISTER_SIZE];
      int offset = 0;
      int regnum = IA64_FR8_REGNUM;
      int n = FUNC0 (type) / FUNC0 (float_elt_type);

      while (n-- > 0)
	{
	  FUNC5 (regcache, regnum, from);
	  FUNC1 (from, builtin_type_ia64_ext,
				  (char *)valbuf + offset, float_elt_type);	  
	  offset += FUNC0 (float_elt_type);
	  regnum++;
	}
    }
  else
    {
      ULONGEST val;
      int offset = 0;
      int regnum = IA64_GR8_REGNUM;
      int reglen = FUNC0 (FUNC2 (NULL, IA64_GR8_REGNUM));
      int n = FUNC0 (type) / reglen;
      int m = FUNC0 (type) % reglen;

      while (n-- > 0)
	{
	  ULONGEST val;
	  FUNC6 (regcache, regnum, &val);
	  FUNC4 ((char *)valbuf + offset, &val, reglen);
	  offset += reglen;
	  regnum++;
	}

      if (m)
	{
          FUNC6 (regcache, regnum, &val);
	  FUNC4 ((char *)valbuf + offset, &val, m);
	}
    }
}