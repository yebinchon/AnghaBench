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
typedef  enum omp_clause_code { ____Placeholder_omp_clause_code } omp_clause_code ;
typedef  int /*<<< orphan*/  cp_parser ;

/* Variables and functions */
 int /*<<< orphan*/  CPP_OPEN_PAREN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static tree
FUNC2 (cp_parser *parser, enum omp_clause_code kind, tree list)
{
  if (FUNC1 (parser, CPP_OPEN_PAREN, "`('"))
    return FUNC0 (parser, kind, list);
  return list;
}