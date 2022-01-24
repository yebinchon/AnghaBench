#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct svc_req {int dummy; } ;
struct TYPE_7__ {void* dr_status; } ;
typedef  TYPE_2__ nfsdiropres ;
struct TYPE_6__ {int /*<<< orphan*/  da_fhandle; } ;
struct TYPE_8__ {TYPE_1__ ca_where; } ;
typedef  TYPE_3__ nfscreateargs ;

/* Variables and functions */
 int /*<<< orphan*/  EROFS ; 
 int /*<<< orphan*/  ESTALE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 void* FUNC1 (int /*<<< orphan*/ ) ; 

nfsdiropres *
FUNC2(nfscreateargs *argp, struct svc_req *rqstp)
{
  static nfsdiropres res;

  if (!FUNC0(&argp->ca_where.da_fhandle))
    res.dr_status = FUNC1(ESTALE);
  else
    res.dr_status = FUNC1(EROFS);

  return &res;
}