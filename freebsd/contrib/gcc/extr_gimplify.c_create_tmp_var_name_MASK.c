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
 int /*<<< orphan*/  FUNC0 (char*,char const*,int /*<<< orphan*/ ) ; 
 char* FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  tmp_var_id_num ; 

tree
FUNC5 (const char *prefix)
{
  char *tmp_name;

  if (prefix)
    {
      char *preftmp = FUNC1 (prefix);

      FUNC3 (preftmp, FUNC4 (preftmp));
      prefix = preftmp;
    }

  FUNC0 (tmp_name, prefix ? prefix : "T", tmp_var_id_num++);
  return FUNC2 (tmp_name);
}