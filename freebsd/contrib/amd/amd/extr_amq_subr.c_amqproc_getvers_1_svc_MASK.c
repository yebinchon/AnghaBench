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
typedef  int /*<<< orphan*/  voidp ;
struct svc_req {int dummy; } ;
typedef  int /*<<< orphan*/  amq_string ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 

amq_string *
FUNC1(voidp argp, struct svc_req *rqstp)
{
  static amq_string res;

  res = FUNC0();
  return &res;
}