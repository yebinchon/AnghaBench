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
typedef  int /*<<< orphan*/  unichar ;
struct bin_res_id {struct bin_res_id* id; struct bin_res_id* sig; } ;
typedef  int rc_uint_type ;
struct TYPE_5__ {int length; int* name; } ;
struct TYPE_6__ {int id; TYPE_1__ n; } ;
struct TYPE_7__ {TYPE_2__ u; scalar_t__ named; } ;
typedef  TYPE_3__ rc_res_id ;
typedef  scalar_t__ bfd_signed_vma ;
typedef  struct bin_res_id bfd_byte ;

/* Variables and functions */
 int BIN_RES_ID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct bin_res_id*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct bin_res_id*,int) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static rc_uint_type
FUNC3 (windres_bfd *wrbfd, rc_uint_type off, const rc_res_id *id)
{
  if (id->named)
    {
      rc_uint_type len = (((bfd_signed_vma) id->u.n.length < 0 ? 0 : id->u.n.length) + 1);
      if (wrbfd)
	{
	  rc_uint_type i;
	  bfd_byte *d = (bfd_byte *) FUNC2 (len * sizeof (unichar));
	  for (i = 0; i < (len - 1); i++)
	    FUNC1 (wrbfd, d + (i * sizeof (unichar)), id->u.n.name[i]);
	  FUNC1 (wrbfd, d + (i * sizeof (unichar)), 0);
	  FUNC0 (wrbfd, d, off, (len * sizeof (unichar)));
	}
      off += (len * sizeof (unichar));
    }
  else
    {
      if (wrbfd)
	{
	  struct bin_res_id bid;
	  FUNC1 (wrbfd, bid.sig, 0xffff);
	  FUNC1 (wrbfd, bid.id, id->u.id);
	  FUNC0 (wrbfd, &bid, off, BIN_RES_ID);
	}
      off += BIN_RES_ID;
    }
  return off;
}