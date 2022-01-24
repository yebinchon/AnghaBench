#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  tree ;
struct loop {int dummy; } ;
typedef  int /*<<< orphan*/  basic_block ;

/* Variables and functions */
#define  COND_EXPR 130 
#define  LABEL_EXPR 129 
#define  MODIFY_EXPR 128 
 int TDF_DETAILS ; 
 int /*<<< orphan*/  TDF_SLIM ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dump_file ; 
 int dump_flags ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct loop*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC4 (struct loop *loop, basic_block bb, tree stmt)
{
  switch (FUNC0 (stmt))
    {
    case LABEL_EXPR:
      break;

    case MODIFY_EXPR:

      if (!FUNC2 (loop, bb, stmt))
	return false;
      break;

    case COND_EXPR:
      break;

    default:
      /* Don't know what to do with 'em so don't do anything.  */
      if (dump_file && (dump_flags & TDF_DETAILS))
	{
	  FUNC1 (dump_file, "don't know what to do\n");
	  FUNC3 (dump_file, stmt, TDF_SLIM);
	}
      return false;
      break;
    }

  return true;
}