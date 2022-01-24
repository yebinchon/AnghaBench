#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  enum cpp_ttype { ____Placeholder_cpp_ttype } cpp_ttype ;
struct TYPE_15__ {int /*<<< orphan*/  skip_eval; } ;
struct TYPE_16__ {TYPE_1__ state; } ;
typedef  TYPE_2__ cpp_reader ;
struct TYPE_17__ {int overflow; int unsignedp; int /*<<< orphan*/  high; int /*<<< orphan*/  low; } ;
typedef  TYPE_3__ cpp_num ;

/* Variables and functions */
#define  CPP_COMPL 130 
 int /*<<< orphan*/  CPP_DL_WARNING ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
#define  CPP_UMINUS 129 
#define  CPP_UPLUS 128 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,char*) ; 
 TYPE_3__ FUNC3 (TYPE_3__,int /*<<< orphan*/ ) ; 
 TYPE_3__ FUNC4 (TYPE_3__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__) ; 
 int /*<<< orphan*/  precision ; 

__attribute__((used)) static cpp_num
FUNC6 (cpp_reader *pfile, cpp_num num, enum cpp_ttype op)
{
  switch (op)
    {
    case CPP_UPLUS:
      if (FUNC1 (pfile) && !pfile->state.skip_eval)
	FUNC2 (pfile, CPP_DL_WARNING,
		   "traditional C rejects the unary plus operator");
      num.overflow = false;
      break;

    case CPP_UMINUS:
      num = FUNC3 (num, FUNC0 (pfile, precision));
      break;

    case CPP_COMPL:
      num.high = ~num.high;
      num.low = ~num.low;
      num = FUNC4 (num, FUNC0 (pfile, precision));
      num.overflow = false;
      break;

    default: /* case CPP_NOT: */
      num.low = FUNC5 (num);
      num.high = 0;
      num.overflow = false;
      num.unsignedp = false;
      break;
    }

  return num;
}