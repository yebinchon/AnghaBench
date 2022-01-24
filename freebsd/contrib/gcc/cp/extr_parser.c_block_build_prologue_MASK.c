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
struct block_sema_info {int /*<<< orphan*/  block_body; scalar_t__ block_byref_decl_list; scalar_t__ block_ref_decl_list; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

void
FUNC7 (struct block_sema_info *block_impl)
{
  tree chain;
  tree self_parm = FUNC6 (FUNC5 (".block_descriptor"));
  FUNC4 (self_parm);
  
  for (chain = block_impl->block_ref_decl_list; chain;
	chain = FUNC0 (chain))
      FUNC3 (self_parm, FUNC1 (chain),
					  block_impl->block_body);
  /* APPLE LOCAL begin radar 6169527 */
  for (chain = block_impl->block_byref_decl_list; chain;
	chain = FUNC0 (chain))
      FUNC2 (self_parm, FUNC1 (chain),
						block_impl->block_body);
  /* APPLE LOCAL end radar 6169527 */
}