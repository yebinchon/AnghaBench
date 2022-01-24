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
typedef  int /*<<< orphan*/  dwarf_vma ;

/* Variables and functions */
 int DW_EH_PE_signed ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,int) ; 
 int FUNC2 (int) ; 

__attribute__((used)) static dwarf_vma
FUNC3 (unsigned char *data, int encoding)
{
  int size = FUNC2 (encoding);

  if (encoding & DW_EH_PE_signed)
    return FUNC1 (data, size);
  else
    return FUNC0 (data, size);
}