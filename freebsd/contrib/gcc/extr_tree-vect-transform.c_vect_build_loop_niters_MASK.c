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
typedef  scalar_t__ tree ;
struct loop {int dummy; } ;
typedef  int /*<<< orphan*/  loop_vec_info ;
typedef  int /*<<< orphan*/  edge ;
typedef  int /*<<< orphan*/  basic_block ;

/* Variables and functions */
 struct loop* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC6 (scalar_t__,scalar_t__*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (struct loop*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static tree
FUNC10 (loop_vec_info loop_vinfo)
{
  tree ni_name, stmt, var;
  edge pe;
  struct loop *loop = FUNC0 (loop_vinfo);
  tree ni = FUNC9 (FUNC1 (loop_vinfo));

  var = FUNC5 (FUNC2 (ni), "niters");
  FUNC3 (var);
  ni_name = FUNC6 (ni, &stmt, false, var);

  pe = FUNC8 (loop);
  if (stmt)
    {
      basic_block new_bb = FUNC4 (pe, stmt);
      FUNC7 (!new_bb);
    }
      
  return ni_name;
}