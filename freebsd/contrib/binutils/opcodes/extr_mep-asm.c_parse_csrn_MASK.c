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
typedef  int /*<<< orphan*/  CGEN_KEYWORD ;
typedef  int /*<<< orphan*/  CGEN_CPU_DESC ;

/* Variables and functions */
 int /*<<< orphan*/  MEP_OPERAND_CSRN_IDX ; 
 char* FUNC0 (int /*<<< orphan*/ ,char const**,int /*<<< orphan*/ *,long*) ; 
 char* FUNC1 (int /*<<< orphan*/ ,char const**,int /*<<< orphan*/ ,unsigned long*) ; 

const char *
FUNC2 (CGEN_CPU_DESC cd, const char **strp,
	    CGEN_KEYWORD *keyword_table, long *field)
{
  const char *err;
  unsigned long value;

  err = FUNC0 (cd, strp, keyword_table, field);
  if (!err)
    return NULL;

  err = FUNC1 (cd, strp, MEP_OPERAND_CSRN_IDX, & value);
  if (err)
    return err;
  *field = value;
  return NULL;
}