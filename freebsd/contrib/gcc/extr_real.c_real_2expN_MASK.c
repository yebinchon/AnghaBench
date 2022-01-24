#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/ * sig; int /*<<< orphan*/  cl; } ;
typedef  TYPE_1__ REAL_VALUE_TYPE ;

/* Variables and functions */
 int MAX_EXP ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int SIGSZ ; 
 int /*<<< orphan*/  SIG_MSB ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  rvc_inf ; 
 int /*<<< orphan*/  rvc_normal ; 

void
FUNC2 (REAL_VALUE_TYPE *r, int n)
{
  FUNC1 (r, 0, sizeof (*r));

  n++;
  if (n > MAX_EXP)
    r->cl = rvc_inf;
  else if (n < -MAX_EXP)
    ;
  else
    {
      r->cl = rvc_normal;
      FUNC0 (r, n);
      r->sig[SIGSZ-1] = SIG_MSB;
    }
}