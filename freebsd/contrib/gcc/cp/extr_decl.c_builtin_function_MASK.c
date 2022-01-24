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
typedef  int /*<<< orphan*/  tree ;
typedef  enum built_in_class { ____Placeholder_built_in_class } built_in_class ;

/* Variables and functions */
 int /*<<< orphan*/  NULL_TREE ; 
 int /*<<< orphan*/  FUNC0 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  std_identifier ; 
 int /*<<< orphan*/  std_node ; 

tree
FUNC3 (const char* name,
		  tree type,
		  int code,
		  enum built_in_class cl,
		  const char* libname,
		  tree attrs)
{
  /* All builtins that don't begin with an '_' should additionally
     go in the 'std' namespace.  */
  if (name[0] != '_')
    {
      FUNC2 (std_identifier);
      FUNC0 (name, type, std_node, code, cl, libname, attrs);
      FUNC1 ();
    }

  return FUNC0 (name, type, NULL_TREE, code,
			     cl, libname, attrs);
}