#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct svc_req {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  da_fhandle; } ;
struct TYPE_5__ {TYPE_1__ sla_from; } ;
typedef  TYPE_2__ nfssymlinkargs ;
typedef  int /*<<< orphan*/  nfsstat ;

/* Variables and functions */
 int /*<<< orphan*/  EROFS ; 
 int /*<<< orphan*/  ESTALE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

nfsstat *
FUNC2(nfssymlinkargs *argp, struct svc_req *rqstp)
{
  static nfsstat res;

  if (!FUNC0(&argp->sla_from.da_fhandle))
    res = FUNC1(ESTALE);
  else
    res = FUNC1(EROFS);

  return &res;
}