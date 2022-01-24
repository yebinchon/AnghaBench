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
typedef  int /*<<< orphan*/  symbolS ;
typedef  int /*<<< orphan*/  relax_substateT ;
typedef  int /*<<< orphan*/  offsetT ;

/* Variables and functions */
 int MAX_MEM_FOR_RS_ALIGN_CODE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  rs_align_code ; 

void
FUNC3 (int n, int max)
{
  char * p;

  /* We assume that there will never be a requirement
     to support alignments greater than 32 bytes.  */
  if (max > MAX_MEM_FOR_RS_ALIGN_CODE)
    FUNC1 (FUNC0("alignments greater than 32 bytes not supported in .text sections."));

  p = FUNC2 (rs_align_code,
		MAX_MEM_FOR_RS_ALIGN_CODE,
		1,
		(relax_substateT) max,
		(symbolS *) NULL,
		(offsetT) n,
		(char *) NULL);
  *p = 0;
}