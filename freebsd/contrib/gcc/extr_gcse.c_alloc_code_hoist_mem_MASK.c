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
 void* antloc ; 
 void* comp ; 
 void* hoist_exprs ; 
 void* hoist_vbein ; 
 void* hoist_vbeout ; 
 void* FUNC0 (int,int) ; 
 void* transp ; 
 void* transpout ; 

__attribute__((used)) static void
FUNC1 (int n_blocks, int n_exprs)
{
  antloc = FUNC0 (n_blocks, n_exprs);
  transp = FUNC0 (n_blocks, n_exprs);
  comp = FUNC0 (n_blocks, n_exprs);

  hoist_vbein = FUNC0 (n_blocks, n_exprs);
  hoist_vbeout = FUNC0 (n_blocks, n_exprs);
  hoist_exprs = FUNC0 (n_blocks, n_exprs);
  transpout = FUNC0 (n_blocks, n_exprs);
}