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
typedef  int /*<<< orphan*/  voidp ;
struct svc_req {int dummy; } ;
typedef  int /*<<< orphan*/  rv ;
struct TYPE_4__ {int /*<<< orphan*/  au_errno; int /*<<< orphan*/  au_etype; } ;
typedef  TYPE_1__ amq_sync_umnt ;

/* Variables and functions */
 int /*<<< orphan*/  AMQ_UMNT_FORK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct svc_req*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

amq_sync_umnt *
FUNC2(voidp argp, struct svc_req *rqstp)
{
  static amq_sync_umnt rv;

  FUNC1(&rv, 0, sizeof(rv));
  rv.au_etype = AMQ_UMNT_FORK;
  rv.au_errno = errno;

  FUNC0(argp, rqstp);

  return &rv;
}