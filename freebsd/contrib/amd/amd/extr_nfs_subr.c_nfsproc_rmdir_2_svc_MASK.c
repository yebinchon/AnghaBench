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
struct svc_req {int dummy; } ;
typedef  int /*<<< orphan*/  nfsstat ;
typedef  int /*<<< orphan*/  nfsdiropargs ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,struct svc_req*,int /*<<< orphan*/ ) ; 

nfsstat *
FUNC1(nfsdiropargs *argp, struct svc_req *rqstp)
{
  return FUNC0(argp, rqstp, FALSE);
}