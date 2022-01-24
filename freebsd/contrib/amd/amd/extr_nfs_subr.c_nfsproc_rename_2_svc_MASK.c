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
struct svc_req {int dummy; } ;
typedef  int /*<<< orphan*/  nfsstat ;
struct TYPE_6__ {int /*<<< orphan*/  da_name; int /*<<< orphan*/  da_fhandle; } ;
struct TYPE_5__ {int /*<<< orphan*/  da_fhandle; } ;
struct TYPE_7__ {TYPE_2__ rna_to; TYPE_1__ rna_from; } ;
typedef  TYPE_3__ nfsrenameargs ;

/* Variables and functions */
 int /*<<< orphan*/  EROFS ; 
 int /*<<< orphan*/  ESTALE ; 
 int /*<<< orphan*/  NFS_OK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

nfsstat *
FUNC3(nfsrenameargs *argp, struct svc_req *rqstp)
{
  static nfsstat res;

  if (!FUNC1(&argp->rna_from.da_fhandle) || !FUNC1(&argp->rna_to.da_fhandle))
    res = FUNC2(ESTALE);
  /*
   * If the kernel is doing clever things with referenced files
   * then let it pretend...
   */
  else if (FUNC0(argp->rna_to.da_name, ".nfs", 4))
    res = NFS_OK;
  /*
   * otherwise a failure
   */
  else
    res = FUNC2(EROFS);

  return &res;
}