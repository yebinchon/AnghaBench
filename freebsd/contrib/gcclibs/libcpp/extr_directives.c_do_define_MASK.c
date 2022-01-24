#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  (* define ) (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;} ;
struct TYPE_9__ {int save_comments; } ;
struct TYPE_11__ {int /*<<< orphan*/  directive_line; TYPE_2__ cb; TYPE_1__ state; } ;
typedef  TYPE_3__ cpp_reader ;
typedef  int /*<<< orphan*/  cpp_hashnode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  discard_comments_in_macro_exp ; 
 int /*<<< orphan*/ * FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC4 (cpp_reader *pfile)
{
  cpp_hashnode *node = FUNC2 (pfile);

  if (node)
    {
      /* If we have been requested to expand comments into macros,
	 then re-enable saving of comments.  */
      pfile->state.save_comments =
	! FUNC0 (pfile, discard_comments_in_macro_exp);

      if (FUNC1 (pfile, node))
	if (pfile->cb.define)
	  pfile->cb.define (pfile, pfile->directive_line, node);
    }
}