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
typedef  int cp_cv_quals ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int TYPE_QUAL_CONST ; 
 int TYPE_QUAL_RESTRICT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  this_identifier ; 

tree
FUNC5 (tree type, cp_cv_quals quals)
{
  tree this_type;
  tree qual_type;
  tree parm;
  cp_cv_quals this_quals;

  this_type = FUNC0 (FUNC1 (type));
  /* The `this' parameter is implicitly `const'; it cannot be
     assigned to.  */
  this_quals = (quals & TYPE_QUAL_RESTRICT) | TYPE_QUAL_CONST;
  qual_type = FUNC4 (this_type, this_quals);
  parm = FUNC2 (this_identifier, qual_type);
  FUNC3 (this_quals, parm);
  return parm;
}