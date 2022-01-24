#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct svc_req {int dummy; } ;
typedef  int /*<<< orphan*/  res ;
struct TYPE_3__ {int /*<<< orphan*/  rr_status; } ;
typedef  TYPE_1__ nfsreadres ;
typedef  int /*<<< orphan*/  nfsreadargs ;

/* Variables and functions */
 int /*<<< orphan*/  EACCES ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

nfsreadres *
FUNC2(nfsreadargs *argp, struct svc_req *rqstp)
{
  static nfsreadres res;

  FUNC0((char *) &res, 0, sizeof(res));
  res.rr_status = FUNC1(EACCES);

  return &res;
}