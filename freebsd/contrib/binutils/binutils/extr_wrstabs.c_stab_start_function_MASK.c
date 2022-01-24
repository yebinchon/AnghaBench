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
struct stab_write_handle {scalar_t__ nesting; int fun_offset; int symbols_size; } ;
typedef  scalar_t__ bfd_boolean ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  N_FUN ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,char const*,float,char*) ; 
 char* FUNC3 (struct stab_write_handle*) ; 
 int /*<<< orphan*/  FUNC4 (struct stab_write_handle*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC5 (char const*) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 

__attribute__((used)) static bfd_boolean
FUNC7 (void *p, const char *name, bfd_boolean globalp)
{
  struct stab_write_handle *info = (struct stab_write_handle *) p;
  char *rettype, *buf;

  FUNC0 (info->nesting == 0 && info->fun_offset == -1);

  rettype = FUNC3 (info);

  buf = (char *) FUNC6 (FUNC5 (name) + FUNC5 (rettype) + 3);
  FUNC2 (buf, "%s:%c%s", name,
	   globalp ? 'F' : 'f',
	   rettype);

  /* We don't know the value now, so we set it in start_block.  */
  info->fun_offset = info->symbols_size;

  if (! FUNC4 (info, N_FUN, 0, 0, buf))
    return FALSE;

  FUNC1 (buf);

  return TRUE;
}