#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  decimal128 ;
typedef  int /*<<< orphan*/  decNumber ;
struct TYPE_8__ {int status; scalar_t__ traps; } ;
typedef  TYPE_1__ decContext ;
struct TYPE_9__ {scalar_t__ cl; int sign; int decimal; scalar_t__ sig; } ;
typedef  TYPE_2__ REAL_VALUE_TYPE ;

/* Variables and functions */
 int /*<<< orphan*/  DEC_INIT_DECIMAL128 ; 
 int DEC_Overflow ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 void* rvc_inf ; 
 scalar_t__ rvc_nan ; 
 scalar_t__ rvc_normal ; 
 scalar_t__ rvc_zero ; 

__attribute__((used)) static void
FUNC7 (REAL_VALUE_TYPE *r, decNumber *dn, decContext *context)
{
  FUNC6 (r, 0, sizeof (REAL_VALUE_TYPE));

  r->cl = rvc_normal;
  if (FUNC4 (dn))
    r->cl = rvc_zero;
  if (FUNC2 (dn))
    r->cl = rvc_nan;
  if (FUNC1 (dn))
    r->cl = rvc_inf;
  if (context->status & DEC_Overflow)
    r->cl = rvc_inf;
  if (FUNC3 (dn))
    r->sign = 1;
  r->decimal = 1;

  if (r->cl != rvc_normal)
    return;

  FUNC0 (context, DEC_INIT_DECIMAL128);
  context->traps = 0;

  FUNC5 ((decimal128 *) r->sig, dn, context);
}