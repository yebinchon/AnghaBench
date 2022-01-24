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
typedef  int /*<<< orphan*/  TFtype ;

/* Variables and functions */
 int /*<<< orphan*/  A ; 
 int /*<<< orphan*/  B ; 
 int /*<<< orphan*/  FP_DECL_EX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FP_HANDLE_EXCEPTIONS ; 
 int /*<<< orphan*/  FP_INIT_ROUNDMODE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  R ; 

TFtype FUNC4(TFtype a, TFtype b)
{
  FP_DECL_EX;
  FUNC0(A); FUNC0(B); FUNC0(R);
  TFtype r;

  FP_INIT_ROUNDMODE;
  FUNC3(A, a);
  FUNC3(B, b);
  FUNC2(R, A, B);
  FUNC1(r, R);
  FP_HANDLE_EXCEPTIONS;

  return r;
}