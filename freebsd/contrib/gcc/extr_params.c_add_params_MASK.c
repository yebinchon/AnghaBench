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
typedef  int /*<<< orphan*/  param_info ;

/* Variables and functions */
 scalar_t__ compiler_params ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/  const*,size_t) ; 
 size_t num_compiler_params ; 
 scalar_t__ FUNC1 (scalar_t__,size_t) ; 

void
FUNC2 (const param_info params[], size_t n)
{
  /* Allocate enough space for the new parameters.  */
  compiler_params = FUNC1 (compiler_params,
			      (num_compiler_params + n) * sizeof (param_info));
  /* Copy them into the table.  */
  FUNC0 (compiler_params + num_compiler_params,
	  params,
	  n * sizeof (param_info));
  /* Keep track of how many parameters we have.  */
  num_compiler_params += n;
}