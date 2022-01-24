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

/* Variables and functions */
 int /*<<< orphan*/  IA64_FR8_REGNUM ; 
 int /*<<< orphan*/  IA64_GR8_REGNUM ; 
 int MAX_REGISTER_SIZE ; 
 scalar_t__ FUNC0 (struct type*) ; 
 scalar_t__ TYPE_CODE_FLT ; 
 int /*<<< orphan*/  builtin_type_ia64_ext ; 
 int /*<<< orphan*/  FUNC1 (void const*,struct type*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct regcache*,int /*<<< orphan*/ ,void const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4 (struct type *type, struct regcache *regcache, const void *valbuf)
{
  if (FUNC0 (type) == TYPE_CODE_FLT)
    {
      char to[MAX_REGISTER_SIZE];
      FUNC1 (valbuf, type, to, builtin_type_ia64_ext);
      FUNC2 (regcache, IA64_FR8_REGNUM, (void *)to);
      FUNC3 (IA64_FR8_REGNUM);
    }
  else
    FUNC2 (regcache, IA64_GR8_REGNUM, valbuf);
}