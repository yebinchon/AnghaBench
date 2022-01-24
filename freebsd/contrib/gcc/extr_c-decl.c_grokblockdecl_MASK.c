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
struct c_declspecs {int /*<<< orphan*/  attrs; } ;
struct c_declarator {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLOCKDEF ; 
 int /*<<< orphan*/  NULL_TREE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct c_declarator*,struct c_declspecs*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 

tree
FUNC2 (struct c_declspecs *specs, struct c_declarator *declarator)
{
  tree decl;
  tree attrs = specs->attrs;

  specs->attrs = NULL_TREE;

  decl = FUNC1 (declarator, specs, BLOCKDEF,
			  false, NULL);

  /* Apply attributes.  */
  FUNC0 (&decl, attrs, 0);

  return decl;
}