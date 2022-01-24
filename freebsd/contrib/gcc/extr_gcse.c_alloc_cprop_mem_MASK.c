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
 void* cprop_absaltered ; 
 void* cprop_avin ; 
 void* cprop_avout ; 
 void* cprop_pavloc ; 
 void* FUNC0 (int,int) ; 

__attribute__((used)) static void
FUNC1 (int n_blocks, int n_sets)
{
  cprop_pavloc = FUNC0 (n_blocks, n_sets);
  cprop_absaltered = FUNC0 (n_blocks, n_sets);

  cprop_avin = FUNC0 (n_blocks, n_sets);
  cprop_avout = FUNC0 (n_blocks, n_sets);
}