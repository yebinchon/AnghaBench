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
typedef  scalar_t__ PTR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,size_t) ; 
 scalar_t__ FUNC1 (size_t) ; 

PTR
FUNC2 (size_t nelem, size_t elsize)
{
  register PTR ptr;  

  if (nelem == 0 || elsize == 0)
    nelem = elsize = 1;
  
  ptr = FUNC1 (nelem * elsize);
  if (ptr) FUNC0 (ptr, nelem * elsize);
  
  return ptr;
}