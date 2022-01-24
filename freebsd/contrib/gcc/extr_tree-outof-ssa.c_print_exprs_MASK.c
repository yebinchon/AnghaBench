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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  TDF_SLIM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2 (FILE *f, const char *str1, tree expr1, const char *str2,
	     tree expr2, const char *str3)
{
  FUNC0 (f, "%s", str1);
  FUNC1 (f, expr1, TDF_SLIM);
  FUNC0 (f, "%s", str2);
  FUNC1 (f, expr2, TDF_SLIM);
  FUNC0 (f, "%s", str3);
}