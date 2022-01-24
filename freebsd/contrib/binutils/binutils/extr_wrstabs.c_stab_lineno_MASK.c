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
struct stab_write_handle {char const* lineno_filename; scalar_t__ last_text_address; scalar_t__ fnaddr; } ;
typedef  scalar_t__ bfd_vma ;
typedef  int /*<<< orphan*/  bfd_boolean ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  N_SLINE ; 
 int /*<<< orphan*/  N_SOL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct stab_write_handle*,int /*<<< orphan*/ ,unsigned long,scalar_t__,char const*) ; 
 scalar_t__ FUNC2 (char const*,char const*) ; 

__attribute__((used)) static bfd_boolean
FUNC3 (void *p, const char *file, unsigned long lineno, bfd_vma addr)
{
  struct stab_write_handle *info = (struct stab_write_handle *) p;

  FUNC0 (info->lineno_filename != NULL);

  if (addr > info->last_text_address)
    info->last_text_address = addr;

  if (FUNC2 (file, info->lineno_filename) != 0)
    {
      if (! FUNC1 (info, N_SOL, 0, addr, file))
	return FALSE;
      info->lineno_filename = file;
    }

  return FUNC1 (info, N_SLINE, lineno, addr - info->fnaddr,
			    (const char *) NULL);
}