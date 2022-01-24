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

/* Variables and functions */
 int /*<<< orphan*/  Pmode ; 
 size_t TOC_REGISTER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ no_new_pseudos ; 
 int* regs_ever_live ; 
 int /*<<< orphan*/  toc_label_name ; 

rtx
FUNC5 (rtx symbol)
{
  if (no_new_pseudos)
    regs_ever_live[TOC_REGISTER] = 1;
  return FUNC2 (Pmode,
	   FUNC3 (Pmode, TOC_REGISTER),
	     FUNC0 (Pmode,
	       FUNC1 (Pmode, symbol,
		 FUNC4 (Pmode, toc_label_name))));
}