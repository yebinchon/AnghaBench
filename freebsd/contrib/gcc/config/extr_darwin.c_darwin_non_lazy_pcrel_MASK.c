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
typedef  int /*<<< orphan*/  rtx ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ SYMBOL_REF ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 char* FUNC4 (int /*<<< orphan*/ ,int) ; 

void
FUNC5 (FILE *file, rtx addr)
{
  const char *nlp_name;

  FUNC3 (FUNC1 (addr) == SYMBOL_REF);

  nlp_name = FUNC4 (addr, /*stub_p=*/false);
  FUNC2 ("\t.long\t", file);
  FUNC0 (file, nlp_name);
  FUNC2 ("-.", file);
}