#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;
typedef  struct TYPE_11__   TYPE_10__ ;

/* Type definitions */
struct extern_res_data {int /*<<< orphan*/  size; int /*<<< orphan*/  reserved; int /*<<< orphan*/  codepage; int /*<<< orphan*/  rva; } ;
struct TYPE_13__ {int length; TYPE_4__* last; TYPE_4__* d; } ;
struct TYPE_11__ {int length; } ;
struct coff_write_info {int dirsize; int dirstrsize; int reloc_count; int dataentsize; int /*<<< orphan*/  wrbfd; TYPE_2__ resources; TYPE_10__ dataents; TYPE_5__** relocs; int /*<<< orphan*/  sympp; } ;
typedef  int /*<<< orphan*/  rc_uint_type ;
struct TYPE_12__ {int codepage; int reserved; } ;
struct TYPE_14__ {TYPE_1__ coff_info; } ;
typedef  TYPE_3__ rc_res_resource ;
struct TYPE_15__ {int length; struct TYPE_15__* next; TYPE_3__ const* res; } ;
typedef  TYPE_4__ coff_res_data ;
struct TYPE_16__ {int address; int /*<<< orphan*/ * howto; scalar_t__ addend; int /*<<< orphan*/  sym_ptr_ptr; } ;
typedef  TYPE_5__ arelent ;

/* Variables and functions */
 int /*<<< orphan*/  BFD_RELOC_RVA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_10__*,int) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_3__ const*) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 TYPE_5__** FUNC8 (TYPE_5__**,int) ; 

__attribute__((used)) static void
FUNC9 (const rc_res_resource *res, struct coff_write_info *cwi)
{
  arelent *r;
  struct extern_res_data *erd;
  coff_res_data *d;

  /* For some reason, although every other address is a section
     offset, the address of the resource data itself is an RVA.  That
     means that we need to generate a relocation for it.  We allocate
     the relocs array using malloc so that we can use realloc.  FIXME:
     This relocation handling is correct for the i386, but probably
     not for any other target.  */

  r = (arelent *) FUNC6 (sizeof (arelent));
  r->sym_ptr_ptr = cwi->sympp;
  r->address = cwi->dirsize + cwi->dirstrsize + cwi->dataents.length;
  r->addend = 0;
  r->howto = FUNC3 (FUNC0 (cwi->wrbfd), BFD_RELOC_RVA);
  if (r->howto == NULL)
    FUNC2 (FUNC1("can't get BFD_RELOC_RVA relocation type"));

  cwi->relocs = FUNC8 (cwi->relocs,
			  (cwi->reloc_count + 2) * sizeof (arelent *));
  cwi->relocs[cwi->reloc_count] = r;
  cwi->relocs[cwi->reloc_count + 1] = NULL;
  ++cwi->reloc_count;

  erd = (struct extern_res_data *) FUNC4 (&cwi->dataents, sizeof (*erd));

  FUNC7 (cwi->wrbfd, erd->rva,
	     (cwi->dirsize
	      + cwi->dirstrsize
	      + cwi->dataentsize
	      + cwi->resources.length));
  FUNC7 (cwi->wrbfd, erd->codepage, res->coff_info.codepage);
  FUNC7 (cwi->wrbfd, erd->reserved, res->coff_info.reserved);

  d = (coff_res_data *) FUNC6 (sizeof (coff_res_data));
  d->length = FUNC5 (NULL, (rc_uint_type) 0, res);
  d->res = res;
  d->next = NULL;

  if (cwi->resources.d == NULL)
    cwi->resources.d = d;
  else
    cwi->resources.last->next = d;

  cwi->resources.last = d;
  cwi->resources.length += (d->length + 3) & ~3;

  FUNC7 (cwi->wrbfd, erd->size, d->length);

  /* Force the next resource to have 32 bit alignment.  */
  d->length = (d->length + 3) & ~3;
}