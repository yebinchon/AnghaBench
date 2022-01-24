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
struct partial_symbol {int dummy; } ;

/* Variables and functions */
 scalar_t__ LOC_BLOCK ; 
 scalar_t__ LOC_CONST ; 
 scalar_t__ LOC_TYPEDEF ; 
 scalar_t__ FUNC0 (struct partial_symbol*) ; 

int
FUNC1 (struct partial_symbol *sym)
{
  return (FUNC0 (sym) != LOC_TYPEDEF
	  && FUNC0 (sym) != LOC_BLOCK
	  && FUNC0 (sym) != LOC_CONST);
}