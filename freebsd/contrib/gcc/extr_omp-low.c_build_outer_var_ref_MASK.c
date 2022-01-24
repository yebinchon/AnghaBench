#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tree ;
struct TYPE_6__ {scalar_t__ outer; } ;
typedef  TYPE_1__ omp_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (TYPE_1__*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC11 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static tree
FUNC12 (tree var, omp_context *ctx)
{
  tree x;

  if (FUNC5 (FUNC10 (var, ctx)))
    x = var;
  else if (FUNC8 (var))
    {
      x = FUNC1 (FUNC0 (var), 0);
      x = FUNC12 (x, ctx);
      x = FUNC2 (x);
    }
  else if (FUNC6 (ctx))
    {
      bool by_ref = FUNC11 (var, false);
      x = FUNC3 (var, by_ref, ctx);
    }
  else if (ctx->outer)
    x = FUNC9 (var, ctx->outer);
  else if (FUNC7 (var))
    /* This can happen with orphaned constructs.  If var is reference, it is
       possible it is shared and as such valid.  */
    x = var;
  else
    FUNC4 ();

  if (FUNC7 (var))
    x = FUNC2 (x);

  return x;
}