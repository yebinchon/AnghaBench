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
struct eh_cie_fde {int size; scalar_t__ removed; } ;

/* Variables and functions */
 unsigned int FUNC0 (struct eh_cie_fde*) ; 
 unsigned int FUNC1 (struct eh_cie_fde*) ; 

__attribute__((used)) static unsigned int
FUNC2 (struct eh_cie_fde *entry, unsigned int alignment)
{
  if (entry->removed)
    return 0;
  if (entry->size == 4)
    return 4;
  return (entry->size
	  + FUNC1 (entry)
	  + FUNC0 (entry)
	  + alignment - 1) & -alignment;
}