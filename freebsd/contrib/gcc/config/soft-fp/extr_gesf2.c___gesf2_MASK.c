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
typedef  int /*<<< orphan*/  SFtype ;

/* Variables and functions */
 int /*<<< orphan*/  A ; 
 int /*<<< orphan*/  B ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FP_DECL_EX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FP_EX_INVALID ; 
 int /*<<< orphan*/  FP_HANDLE_EXCEPTIONS ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC5(SFtype a, SFtype b)
{
  FP_DECL_EX;
  FUNC1(A); FUNC1(B);
  int r;

  FUNC4(A, a);
  FUNC4(B, b);
  FUNC0(r, A, B, -2);
  if (r == -2 && (FUNC2(A) || FUNC2(B)))
    FUNC3(FP_EX_INVALID);
  FP_HANDLE_EXCEPTIONS;

  return r;
}