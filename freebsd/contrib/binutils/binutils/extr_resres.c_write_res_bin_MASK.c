#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  windres_bfd ;
typedef  scalar_t__ rc_uint_type ;
typedef  int /*<<< orphan*/  rc_res_resource ;
typedef  int /*<<< orphan*/  rc_res_res_info ;
typedef  int /*<<< orphan*/  rc_res_id ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/  const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,scalar_t__,scalar_t__,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static rc_uint_type
FUNC2 (windres_bfd *wrbfd, rc_uint_type off, const rc_res_resource *res,
	       const rc_res_id *type, const rc_res_id *name,
	       const rc_res_res_info *resinfo)
{
  rc_uint_type noff;
  rc_uint_type datasize = 0;

  noff = FUNC0 ((windres_bfd *) NULL, off, res);
  datasize = noff - off;

  off = FUNC1 (wrbfd, off, datasize, type, name, resinfo);
  return FUNC0 (wrbfd, off, res);
}