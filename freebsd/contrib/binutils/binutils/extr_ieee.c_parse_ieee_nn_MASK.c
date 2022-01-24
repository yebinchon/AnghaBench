#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct ieee_var {char const* name; unsigned long namlen; } ;
struct TYPE_2__ {int alloc; struct ieee_var* vars; } ;
struct ieee_info {TYPE_1__ vars; } ;
typedef  int bfd_vma ;
typedef  int /*<<< orphan*/  bfd_byte ;
typedef  int /*<<< orphan*/  bfd_boolean ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee_info*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee_info*,int /*<<< orphan*/  const**,char const**,unsigned long*) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee_info*,int /*<<< orphan*/  const**,int*) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee_var*,int /*<<< orphan*/ ,unsigned int) ; 
 scalar_t__ FUNC5 (struct ieee_var*,unsigned int) ; 

__attribute__((used)) static bfd_boolean
FUNC6 (struct ieee_info *info, const bfd_byte **pp)
{
  const bfd_byte *nn_start;
  bfd_vma varindx;
  const char *name;
  unsigned long namlen;

  nn_start = *pp;

  if (! FUNC3 (info, pp, &varindx)
      || ! FUNC2 (info, pp, &name, &namlen))
    return FALSE;

  if (varindx < 32)
    {
      FUNC1 (info, nn_start, FUNC0("illegal variable index"));
      return FALSE;
    }
  varindx -= 32;

  if (varindx >= info->vars.alloc)
    {
      unsigned int alloc;

      alloc = info->vars.alloc;
      if (alloc == 0)
	alloc = 4;
      while (varindx >= alloc)
	alloc *= 2;
      info->vars.vars = ((struct ieee_var *)
			 FUNC5 (info->vars.vars,
				   alloc * sizeof *info->vars.vars));
      FUNC4 (info->vars.vars + info->vars.alloc, 0,
	      (alloc - info->vars.alloc) * sizeof *info->vars.vars);
      info->vars.alloc = alloc;
    }

  info->vars.vars[varindx].name = name;
  info->vars.vars[varindx].namlen = namlen;

  return TRUE;
}