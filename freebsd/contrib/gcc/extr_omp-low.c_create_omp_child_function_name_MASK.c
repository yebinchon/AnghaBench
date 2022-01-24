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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 size_t FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 char* FUNC4 (int) ; 
 int /*<<< orphan*/  current_function_decl ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  tmp_ompfn_id_num ; 

__attribute__((used)) static tree
FUNC8 (void)
{
  tree name = FUNC1 (current_function_decl);
  size_t len = FUNC2 (name);
  char *tmp_name, *prefix;

  prefix = FUNC4 (len + sizeof ("_omp_fn"));
  FUNC6 (prefix, FUNC3 (name), len);
  FUNC7 (prefix + len, "_omp_fn");
#ifndef NO_DOT_IN_LABEL
  prefix[len] = '.';
#elif !defined NO_DOLLAR_IN_LABEL
  prefix[len] = '$';
#endif
  FUNC0 (tmp_name, prefix, tmp_ompfn_id_num++);
  return FUNC5 (tmp_name);
}