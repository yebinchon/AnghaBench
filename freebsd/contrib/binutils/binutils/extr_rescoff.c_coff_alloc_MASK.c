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
struct bindata_build {int length; TYPE_1__* last; TYPE_1__* d; } ;
typedef  int rc_uint_type ;
struct TYPE_2__ {int length; int /*<<< orphan*/ * data; struct TYPE_2__* next; } ;
typedef  TYPE_1__ bindata ;
typedef  int /*<<< orphan*/  bfd_byte ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 

__attribute__((used)) static bfd_byte *
FUNC1 (struct bindata_build *bb, rc_uint_type size)
{
  bindata *d;

  d = (bindata *) FUNC0 (sizeof (bindata));

  d->next = NULL;
  d->data = (bfd_byte *) FUNC0 (size);
  d->length = size;

  if (bb->d == NULL)
    bb->d = d;
  else
    bb->last->next = d;
  bb->last = d;
  bb->length += size;

  return d->data;
}