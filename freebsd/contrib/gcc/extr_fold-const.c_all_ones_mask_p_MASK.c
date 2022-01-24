#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tree ;
struct TYPE_3__ {int /*<<< orphan*/  (* signed_type ) (int /*<<< orphan*/ ) ;} ;
struct TYPE_4__ {TYPE_1__ types; } ;

/* Variables and functions */
 int /*<<< orphan*/  LSHIFT_EXPR ; 
 int /*<<< orphan*/  RSHIFT_EXPR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 TYPE_2__ lang_hooks ; 
 int /*<<< orphan*/  FUNC5 (unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8 (tree mask, int size)
{
  tree type = FUNC0 (mask);
  unsigned int precision = FUNC1 (type);
  tree tmask;

  tmask = FUNC2 (lang_hooks.types.signed_type (type), -1);
  tmask = FUNC4 (tmask, 0, false, false);

  return
    FUNC7 (mask,
			FUNC3 (RSHIFT_EXPR,
				     FUNC3 (LSHIFT_EXPR, tmask,
						  FUNC5 (precision - size),
						  0),
				     FUNC5 (precision - size), 0));
}