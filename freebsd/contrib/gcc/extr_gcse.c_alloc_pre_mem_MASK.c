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

/* Variables and functions */
 void* ae_kill ; 
 void* antloc ; 
 void* comp ; 
 int /*<<< orphan*/ * pre_delete_map ; 
 int /*<<< orphan*/ * pre_insert_map ; 
 int /*<<< orphan*/ * pre_optimal ; 
 int /*<<< orphan*/ * pre_redundant ; 
 void* FUNC0 (int,int) ; 
 void* transp ; 

__attribute__((used)) static void
FUNC1 (int n_blocks, int n_exprs)
{
  transp = FUNC0 (n_blocks, n_exprs);
  comp = FUNC0 (n_blocks, n_exprs);
  antloc = FUNC0 (n_blocks, n_exprs);

  pre_optimal = NULL;
  pre_redundant = NULL;
  pre_insert_map = NULL;
  pre_delete_map = NULL;
  ae_kill = FUNC0 (n_blocks, n_exprs);

  /* pre_insert and pre_delete are allocated later.  */
}