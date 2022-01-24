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
struct TYPE_5__ {int* name; } ;
struct TYPE_6__ {int id; TYPE_1__ n; } ;
struct TYPE_7__ {TYPE_2__ u; int /*<<< orphan*/  named; } ;
typedef  TYPE_3__ rc_res_id ;
typedef  struct bin_res_id bfd_byte ;

/* Variables and functions */
 int BIN_RES_ID ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct bin_res_id*,int,int) ; 
 int FUNC2 (int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,struct bin_res_id*,int) ; 

__attribute__((used)) static rc_uint_type
FUNC4 (windres_bfd *wrbfd, rc_uint_type off, rc_res_id id)
{
  if (! id.named)
    {
      if (wrbfd)
	{
	  struct bin_res_id bri;
	  
	  FUNC3 (wrbfd, bri.sig, 0xffff);
	  FUNC3 (wrbfd, bri.id, id.u.id);
	  FUNC1 (wrbfd, &bri, off, BIN_RES_ID);
	}
      off += BIN_RES_ID;
    }
  else
    {
      rc_uint_type len = (id.u.n.name ? FUNC2 (id.u.n.name) : 0);
      if (wrbfd)
	{
	  bfd_byte *d = (bfd_byte *) FUNC0 ((len + 1) * sizeof (unichar));
	  rc_uint_type i;
	  for (i = 0; i < len; i++)
	    FUNC3 (wrbfd, d + (i * sizeof (unichar)), id.u.n.name[i]);
	  FUNC3 (wrbfd, d + (len * sizeof (unichar)), 0);
	  FUNC1 (wrbfd, d, off, (len + 1) * sizeof (unichar));
    }
      off += (rc_uint_type) ((len + 1) * sizeof (unichar));
    }
  return off;
}