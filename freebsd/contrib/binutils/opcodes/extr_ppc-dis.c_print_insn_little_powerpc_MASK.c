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
struct disassemble_info {scalar_t__ private_data; } ;
typedef  int /*<<< orphan*/  bfd_vma ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,struct disassemble_info*,int /*<<< orphan*/ ,int) ; 

int
FUNC1 (bfd_vma memaddr, struct disassemble_info *info)
{
  int dialect = (char *) info->private_data - (char *) 0;
  return FUNC0 (memaddr, info, 0, dialect);
}