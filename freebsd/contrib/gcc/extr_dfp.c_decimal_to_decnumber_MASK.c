#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  decimal128 ;
struct TYPE_12__ {int /*<<< orphan*/  bits; } ;
typedef  TYPE_1__ decNumber ;
struct TYPE_13__ {scalar_t__ traps; } ;
typedef  TYPE_2__ decContext ;
struct TYPE_14__ {int cl; scalar_t__ sign; scalar_t__ sig; int /*<<< orphan*/  decimal; int /*<<< orphan*/  signalling; } ;
typedef  TYPE_3__ REAL_VALUE_TYPE ;

/* Variables and functions */
 int /*<<< orphan*/  DECNEG ; 
 int /*<<< orphan*/  DEC_INIT_DECIMAL128 ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,TYPE_2__*) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
#define  rvc_inf 131 
#define  rvc_nan 130 
#define  rvc_normal 129 
#define  rvc_zero 128 

__attribute__((used)) static void
FUNC7 (const REAL_VALUE_TYPE *r, decNumber *dn)
{
  decContext set;
  FUNC0 (&set, DEC_INIT_DECIMAL128);
  set.traps = 0;

  switch (r->cl)
    {
    case rvc_zero:
      FUNC3 (dn);
      break;
    case rvc_inf:
      FUNC1 (dn, (char *)"Infinity", &set);
      break;
    case rvc_nan:
      if (r->signalling)
        FUNC1 (dn, (char *)"snan", &set);
      else
        FUNC1 (dn, (char *)"nan", &set);
      break;
    case rvc_normal:
      FUNC5 (r->decimal);
      FUNC4 ((decimal128 *) r->sig, dn);
      break;
    default:
      FUNC6 ();
    }

  /* Fix up sign bit.  */
  if (r->sign != FUNC2 (dn))
    dn->bits ^= DECNEG;
}