#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct real_format {int dummy; } ;
typedef  int /*<<< orphan*/  decimal64 ;
typedef  int /*<<< orphan*/  decimal32 ;
typedef  int /*<<< orphan*/  decimal128 ;
typedef  int /*<<< orphan*/  decNumber ;
struct TYPE_9__ {scalar_t__ traps; } ;
typedef  TYPE_1__ decContext ;
struct TYPE_10__ {scalar_t__ cl; scalar_t__ sig; } ;
typedef  TYPE_2__ REAL_VALUE_TYPE ;

/* Variables and functions */
 int /*<<< orphan*/  DEC_INIT_DECIMAL128 ; 
 int /*<<< orphan*/  DEC_INIT_DECIMAL32 ; 
 int /*<<< orphan*/  DEC_INIT_DECIMAL64 ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct real_format const decimal_double_format ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ *,TYPE_1__*) ; 
 struct real_format const decimal_quad_format ; 
 struct real_format const decimal_single_format ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ rvc_normal ; 

void
FUNC8 (const struct real_format *fmt, REAL_VALUE_TYPE *r)
{
  decNumber dn;
  decContext set;

  /* Real encoding occurs later.  */
  if (r->cl != rvc_normal)
    return;

  FUNC0 (&set, DEC_INIT_DECIMAL128);
  set.traps = 0;
  FUNC1 ((decimal128 *) r->sig, &dn);

  if (fmt == &decimal_quad_format)
    {
      /* The internal format is already in this format.  */
      return;
    }
  else if (fmt == &decimal_single_format)
    {
      decimal32 d32;
      FUNC0 (&set, DEC_INIT_DECIMAL32);
      set.traps = 0;

      FUNC2 (&d32, &dn, &set);
      FUNC3 (&d32, &dn);
    }
  else if (fmt == &decimal_double_format)
    {
      decimal64 d64;
      FUNC0 (&set, DEC_INIT_DECIMAL64);
      set.traps = 0;

      FUNC4 (&d64, &dn, &set);
      FUNC5 (&d64, &dn);
    }
  else
    FUNC7 ();

  FUNC6 (r, &dn, &set);
}