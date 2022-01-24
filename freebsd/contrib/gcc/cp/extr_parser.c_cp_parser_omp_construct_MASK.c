#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tree ;
struct TYPE_11__ {int pragma_kind; int /*<<< orphan*/  location; } ;
typedef  TYPE_1__ cp_token ;
typedef  int /*<<< orphan*/  cp_parser ;

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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 () ; 

__attribute__((used)) static void
FUNC10 (cp_parser *parser, cp_token *pragma_tok)
{
  tree stmt;

  switch (pragma_tok->pragma_kind)
    {
    case PRAGMA_OMP_ATOMIC:
      FUNC1 (parser, pragma_tok);
      return;
    case PRAGMA_OMP_CRITICAL:
      stmt = FUNC2 (parser, pragma_tok);
      break;
    case PRAGMA_OMP_FOR:
      stmt = FUNC3 (parser, pragma_tok);
      break;
    case PRAGMA_OMP_MASTER:
      stmt = FUNC4 (parser, pragma_tok);
      break;
    case PRAGMA_OMP_ORDERED:
      stmt = FUNC5 (parser, pragma_tok);
      break;
    case PRAGMA_OMP_PARALLEL:
      stmt = FUNC6 (parser, pragma_tok);
      break;
    case PRAGMA_OMP_SECTIONS:
      stmt = FUNC7 (parser, pragma_tok);
      break;
    case PRAGMA_OMP_SINGLE:
      stmt = FUNC8 (parser, pragma_tok);
      break;
    default:
      FUNC9 ();
    }

  if (stmt)
    FUNC0 (stmt, pragma_tok->location);
}