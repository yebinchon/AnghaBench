#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tree ;
typedef  TYPE_3__* edge ;
struct TYPE_8__ {TYPE_2__* dest; TYPE_1__* src; } ;
struct TYPE_7__ {int index; } ;
struct TYPE_6__ {int index; } ;

/* Variables and functions */
 scalar_t__ ADDR_EXPR ; 
 int /*<<< orphan*/  MODIFY_EXPR ; 
 scalar_t__ PARM_DECL ; 
 int TDF_DETAILS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ VAR_DECL ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ dump_file ; 
 int dump_flags ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC8 (edge e, tree dest, tree src)
{
  tree copy;

  copy = FUNC4 (MODIFY_EXPR, FUNC2 (dest), dest, src);
  FUNC7 (dest);

  if (FUNC0 (src) == ADDR_EXPR)
    src = FUNC1 (src, 0);
  if (FUNC0 (src) == VAR_DECL || FUNC0 (src) == PARM_DECL)
    FUNC7 (src);

  if (dump_file && (dump_flags & TDF_DETAILS))
    {
      FUNC5 (dump_file,
	       "Inserting a copy on edge BB%d->BB%d :",
	       e->src->index,
	       e->dest->index);
      FUNC6 (dump_file, copy, dump_flags);
      FUNC5 (dump_file, "\n");
    }

  FUNC3 (e, copy);
}