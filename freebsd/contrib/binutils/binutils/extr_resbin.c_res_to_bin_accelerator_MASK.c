#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  windres_bfd ;
struct bin_accelerator {int /*<<< orphan*/  pad; int /*<<< orphan*/  id; int /*<<< orphan*/  key; int /*<<< orphan*/  flags; } ;
typedef  int /*<<< orphan*/  rc_uint_type ;
struct TYPE_3__ {int flags; int key; int id; struct TYPE_3__* next; } ;
typedef  TYPE_1__ rc_accelerator ;
typedef  int /*<<< orphan*/  bindata ;

/* Variables and functions */
 int ACC_LAST ; 
 scalar_t__ BIN_ACCELERATOR_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct bin_accelerator*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static rc_uint_type
FUNC2 (windres_bfd *wrbfd, rc_uint_type off,
			const rc_accelerator *accelerators)
{
  bindata *first, **pp;
  const rc_accelerator *a;

  first = NULL;
  pp = &first;

  for (a = accelerators; a != NULL; a = a->next)
    {
      if (wrbfd)
	{
	  struct bin_accelerator ba;

	  FUNC1 (wrbfd, ba.flags, a->flags | (a->next != NULL ? 0 : ACC_LAST));
	  FUNC1 (wrbfd, ba.key, a->key);
	  FUNC1 (wrbfd, ba.id, a->id);
	  FUNC1 (wrbfd, ba.pad, 0);
	  FUNC0 (wrbfd, &ba, off, BIN_ACCELERATOR_SIZE);
    }
      off += BIN_ACCELERATOR_SIZE;
    }
  return off;
}