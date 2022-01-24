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
struct disassemble_info {int /*<<< orphan*/  stream; int /*<<< orphan*/  (* fprintf_func ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ;} ;
typedef  int /*<<< orphan*/  bfd_vma ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 

void
FUNC4 (int status,
	       bfd_vma memaddr,
	       struct disassemble_info *info)
{
  if (status != EIO)
    /* Can't happen.  */
    info->fprintf_func (info->stream, FUNC0("Unknown error %d\n"), status);
  else
    {
      char buf[30];

      /* Actually, address between memaddr and memaddr + len was
	 out of bounds.  */
      FUNC1 (buf, memaddr);
      info->fprintf_func (info->stream,
			  FUNC0("Address 0x%s is out of bounds.\n"), buf);
    }
}