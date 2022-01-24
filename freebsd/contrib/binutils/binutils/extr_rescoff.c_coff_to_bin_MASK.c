#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_9__ ;
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  unichar ;
struct extern_res_entry {int /*<<< orphan*/  rva; int /*<<< orphan*/  name; } ;
struct extern_res_directory {int /*<<< orphan*/ * id_count; int /*<<< orphan*/ * name_count; int /*<<< orphan*/ * minor; int /*<<< orphan*/ * major; int /*<<< orphan*/  time; int /*<<< orphan*/  characteristics; } ;
struct TYPE_13__ {int length; } ;
struct TYPE_17__ {int length; } ;
struct coff_write_info {int dirsize; int dirstrsize; TYPE_4__ dataents; int /*<<< orphan*/  wrbfd; TYPE_9__ dirs; TYPE_9__ dirstrs; } ;
typedef  int rc_uint_type ;
struct TYPE_14__ {int /*<<< orphan*/  res; TYPE_7__* dir; } ;
struct TYPE_10__ {int length; int* name; } ;
struct TYPE_11__ {int id; TYPE_1__ n; } ;
struct TYPE_12__ {TYPE_2__ u; scalar_t__ named; } ;
struct TYPE_15__ {TYPE_5__ u; scalar_t__ subdir; TYPE_3__ id; struct TYPE_15__* next; } ;
typedef  TYPE_6__ rc_res_entry ;
struct TYPE_16__ {int characteristics; int time; int major; int minor; TYPE_6__* entries; } ;
typedef  TYPE_7__ rc_res_directory ;
typedef  int /*<<< orphan*/  bfd_byte ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (TYPE_9__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct coff_write_info*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC4 (const rc_res_directory *resdir, struct coff_write_info *cwi)
{
  struct extern_res_directory *erd;
  int ci, cn;
  const rc_res_entry *e;
  struct extern_res_entry *ere;

  /* Write out the directory table.  */

  erd = ((struct extern_res_directory *)
	 FUNC0 (&cwi->dirs, sizeof (*erd)));

  FUNC3 (cwi->wrbfd, erd->characteristics, resdir->characteristics);
  FUNC3 (cwi->wrbfd, erd->time, resdir->time);
  FUNC2 (cwi->wrbfd, erd->major, resdir->major);
  FUNC2 (cwi->wrbfd, erd->minor, resdir->minor);

  ci = 0;
  cn = 0;
  for (e = resdir->entries; e != NULL; e = e->next)
    {
      if (e->id.named)
	++cn;
      else
	++ci;
    }

  FUNC2 (cwi->wrbfd, erd->name_count, cn);
  FUNC2 (cwi->wrbfd, erd->id_count, ci);

  /* Write out the data entries.  Note that we allocate space for all
     the entries before writing them out.  That permits a recursive
     call to work correctly when writing out subdirectories.  */

  ere = ((struct extern_res_entry *)
	 FUNC0 (&cwi->dirs, (ci + cn) * sizeof (*ere)));
  for (e = resdir->entries; e != NULL; e = e->next, ere++)
    {
      if (! e->id.named)
	FUNC3 (cwi->wrbfd, ere->name, e->id.u.id);
      else
	{
	  bfd_byte *str;
	  rc_uint_type i;

	  /* For some reason existing files seem to have the high bit
             set on the address of the name, although that is not
             documented.  */
	  FUNC3 (cwi->wrbfd, ere->name,
		     0x80000000 | (cwi->dirsize + cwi->dirstrs.length));

	  str = FUNC0 (&cwi->dirstrs, e->id.u.n.length * 2 + 2);
	  FUNC2 (cwi->wrbfd, str, e->id.u.n.length);
	  for (i = 0; i < e->id.u.n.length; i++)
	    FUNC2 (cwi->wrbfd, str + (i + 1) * sizeof (unichar), e->id.u.n.name[i]);
	}

      if (e->subdir)
	{
	  FUNC3 (cwi->wrbfd, ere->rva, 0x80000000 | cwi->dirs.length);
	  FUNC4 (e->u.dir, cwi);
	}
      else
	{
	  FUNC3 (cwi->wrbfd, ere->rva,
		     cwi->dirsize + cwi->dirstrsize + cwi->dataents.length);

	  FUNC1 (e->u.res, cwi);
	}
    }
}