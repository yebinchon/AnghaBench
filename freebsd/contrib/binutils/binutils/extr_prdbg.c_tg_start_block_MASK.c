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
struct pr_handle {scalar_t__ parameter; char* filename; int /*<<< orphan*/  f; TYPE_1__* stack; int /*<<< orphan*/  syms; int /*<<< orphan*/  abfd; } ;
typedef  int /*<<< orphan*/  bfd_vma ;
typedef  int bfd_boolean ;
struct TYPE_2__ {char* parents; scalar_t__* method; int /*<<< orphan*/ * flavor; } ;

/* Variables and functions */
 int FALSE ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC0 (struct pr_handle*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* FUNC5 (struct pr_handle*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bfd_boolean
FUNC8 (void *p, bfd_vma addr)
{
  struct pr_handle *info = (struct pr_handle *) p;
  char ab[20], kind, *partof;
  char *t;
  bfd_boolean local;

  if (info->parameter > 0)
    {
      info->parameter = 0;

      /* Delayed name.  */
      FUNC1 (info->f, "%s\t%s\t", info->stack->parents, info->filename);
      FUNC4 (info->stack->parents);

      FUNC6 (addr, ab, TRUE, TRUE);
      FUNC7 (info->abfd, ab, info->f, info->syms);
      local = info->stack->flavor != NULL;
      if (info->stack->method && *info->stack->method)
	{
	  kind = 'm';
	  partof = (char *) info->stack->method;
	}
      else
	{
	  kind = 'f';
	  partof = NULL;
	  if (! info->stack->method && ! FUNC0 (info, ")"))
	    return FALSE;
	}
      t = FUNC5 (info);
      if (t == NULL)
	return FALSE;
      FUNC1 (info->f, ";\"\tkind:%c\ttype:%s", kind, t);
      if (local)
	FUNC3 ("\tfile:", info->f);
      if (partof)
	{
	  FUNC1 (info->f, "\tclass:%s", partof);
	  FUNC4 (partof);
	}
      FUNC2 ('\n', info->f);
    }

  return TRUE;
}