#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ rc_uint_type ;
struct TYPE_4__ {struct TYPE_4__* next; } ;
typedef  TYPE_1__ rc_rcdata_item ;
typedef  int /*<<< orphan*/  bfd_byte ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_1__ const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 

__attribute__((used)) static bfd_byte *
FUNC2 (const rc_rcdata_item *data, rc_uint_type *plen)
{
  const rc_rcdata_item *d;
  bfd_byte *ret = NULL, *pret;
  rc_uint_type len = 0;

  for (d = data; d != NULL; d = d->next)
    len += FUNC0 (d, NULL);
  if (len != 0)
    {
      ret = pret = (bfd_byte *) FUNC1 (len);
      for (d = data; d != NULL; d = d->next)
	pret += FUNC0 (d, pret);
    }
  if (plen)
    *plen = len;
  return ret;
}