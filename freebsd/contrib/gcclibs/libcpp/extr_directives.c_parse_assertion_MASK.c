#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct answer {int dummy; } ;
struct TYPE_11__ {int /*<<< orphan*/  node; } ;
struct TYPE_13__ {scalar_t__ type; TYPE_1__ val; } ;
typedef  TYPE_3__ cpp_token ;
struct TYPE_12__ {int /*<<< orphan*/  prevent_expansion; } ;
struct TYPE_14__ {TYPE_2__ state; } ;
typedef  TYPE_4__ cpp_reader ;
typedef  int /*<<< orphan*/  cpp_hashnode ;

/* Variables and functions */
 int /*<<< orphan*/  CPP_DL_ERROR ; 
 scalar_t__ CPP_EOF ; 
 scalar_t__ CPP_NAME ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int /*<<< orphan*/ ,char*) ; 
 TYPE_3__* FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/ * FUNC5 (TYPE_4__*,unsigned char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*,int /*<<< orphan*/ ,unsigned int) ; 
 scalar_t__ FUNC7 (TYPE_4__*,struct answer**,int) ; 

__attribute__((used)) static cpp_hashnode *
FUNC8 (cpp_reader *pfile, struct answer **answerp, int type)
{
  cpp_hashnode *result = 0;
  const cpp_token *predicate;

  /* We don't expand predicates or answers.  */
  pfile->state.prevent_expansion++;

  *answerp = 0;
  predicate = FUNC4 (pfile);
  if (predicate->type == CPP_EOF)
    FUNC3 (pfile, CPP_DL_ERROR, "assertion without predicate");
  else if (predicate->type != CPP_NAME)
    FUNC3 (pfile, CPP_DL_ERROR, "predicate must be an identifier");
  else if (FUNC7 (pfile, answerp, type) == 0)
    {
      unsigned int len = FUNC0 (predicate->val.node);
      unsigned char *sym = (unsigned char *) FUNC2 (len + 1);

      /* Prefix '#' to get it out of macro namespace.  */
      sym[0] = '#';
      FUNC6 (sym + 1, FUNC1 (predicate->val.node), len);
      result = FUNC5 (pfile, sym, len + 1);
    }

  pfile->state.prevent_expansion--;
  return result;
}