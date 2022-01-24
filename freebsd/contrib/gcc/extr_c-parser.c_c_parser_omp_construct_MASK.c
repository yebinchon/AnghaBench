#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tree ;
typedef  int /*<<< orphan*/  location_t ;
typedef  enum pragma_kind { ____Placeholder_pragma_kind } pragma_kind ;
typedef  int /*<<< orphan*/  c_parser ;
struct TYPE_2__ {int pragma_kind; int /*<<< orphan*/  location; } ;

/* Variables and functions */
#define  PRAGMA_OMP_ATOMIC 135 
#define  PRAGMA_OMP_CRITICAL 134 
#define  PRAGMA_OMP_FOR 133 
#define  PRAGMA_OMP_MASTER 132 
#define  PRAGMA_OMP_ORDERED 131 
#define  PRAGMA_OMP_PARALLEL 130 
#define  PRAGMA_OMP_SECTIONS 129 
#define  PRAGMA_OMP_SINGLE 128 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 () ; 

__attribute__((used)) static void
FUNC13 (c_parser *parser)
{
  enum pragma_kind p_kind;
  location_t loc;
  tree stmt;

  loc = FUNC11 (parser)->location;
  p_kind = FUNC11 (parser)->pragma_kind;
  FUNC2 (parser);

  /* For all constructs below except #pragma omp atomic
     MUST_NOT_THROW catch handlers are needed when exceptions
     are enabled.  */
  if (p_kind != PRAGMA_OMP_ATOMIC)
    FUNC1 ();

  switch (p_kind)
    {
    case PRAGMA_OMP_ATOMIC:
      FUNC3 (parser);
      return;
    case PRAGMA_OMP_CRITICAL:
      stmt = FUNC4 (parser);
      break;
    case PRAGMA_OMP_FOR:
      stmt = FUNC5 (parser);
      break;
    case PRAGMA_OMP_MASTER:
      stmt = FUNC6 (parser);
      break;
    case PRAGMA_OMP_ORDERED:
      stmt = FUNC7 (parser);
      break;
    case PRAGMA_OMP_PARALLEL:
      stmt = FUNC8 (parser);
      break;
    case PRAGMA_OMP_SECTIONS:
      stmt = FUNC9 (parser);
      break;
    case PRAGMA_OMP_SINGLE:
      stmt = FUNC10 (parser);
      break;
    default:
      FUNC12 ();
    }

  if (stmt)
    FUNC0 (stmt, loc);
}