#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  windres_bfd ;
typedef  int rc_uint_type ;
struct TYPE_5__ {TYPE_3__* acc; } ;
struct TYPE_6__ {TYPE_1__ u; int /*<<< orphan*/  type; } ;
typedef  TYPE_2__ rc_res_resource ;
struct TYPE_7__ {int flags; struct TYPE_7__* next; void* id; void* key; } ;
typedef  TYPE_3__ rc_accelerator ;
typedef  int /*<<< orphan*/  bfd_byte ;

/* Variables and functions */
 int ACC_LAST ; 
 int /*<<< orphan*/  RES_TYPE_ACCELERATOR ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 void* FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 

__attribute__((used)) static rc_res_resource *
FUNC4 (windres_bfd *wrbfd, const bfd_byte *data, rc_uint_type length)
{
  rc_accelerator *first, **pp;
  rc_res_resource *r;

  first = NULL;
  pp = &first;

  while (1)
    {
      rc_accelerator *a;

      if (length < 8)
	FUNC2 (FUNC0("accelerator"));

      a = (rc_accelerator *) FUNC1 (sizeof (rc_accelerator));

      a->flags = FUNC3 (wrbfd, data, 2);
      a->key = FUNC3 (wrbfd, data + 2, 2);
      a->id = FUNC3 (wrbfd, data + 4, 2);

      a->next = NULL;
      *pp = a;
      pp = &a->next;

      if ((a->flags & ACC_LAST) != 0)
	break;

      data += 8;
      length -= 8;
    }

  r = (rc_res_resource *) FUNC1 (sizeof (rc_res_resource));
  r->type = RES_TYPE_ACCELERATOR;
  r->u.acc = first;

  return r;
}