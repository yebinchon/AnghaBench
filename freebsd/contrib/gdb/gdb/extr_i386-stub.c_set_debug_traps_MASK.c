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

/* Variables and functions */
 int STACKSIZE ; 
 int /*<<< orphan*/  _catchException0 ; 
 int /*<<< orphan*/  _catchException1 ; 
 int /*<<< orphan*/  _catchException10 ; 
 int /*<<< orphan*/  _catchException11 ; 
 int /*<<< orphan*/  _catchException12 ; 
 int /*<<< orphan*/  _catchException13 ; 
 int /*<<< orphan*/  _catchException14 ; 
 int /*<<< orphan*/  _catchException16 ; 
 int /*<<< orphan*/  _catchException3 ; 
 int /*<<< orphan*/  _catchException4 ; 
 int /*<<< orphan*/  _catchException5 ; 
 int /*<<< orphan*/  _catchException6 ; 
 int /*<<< orphan*/  _catchException7 ; 
 int /*<<< orphan*/  _catchException8 ; 
 int /*<<< orphan*/  _catchException9 ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int initialized ; 
 int /*<<< orphan*/ * remcomStack ; 
 int /*<<< orphan*/ * stackPtr ; 

void
FUNC1 (void)
{
  stackPtr = &remcomStack[STACKSIZE / sizeof (int) - 1];

  FUNC0 (0, _catchException0);
  FUNC0 (1, _catchException1);
  FUNC0 (3, _catchException3);
  FUNC0 (4, _catchException4);
  FUNC0 (5, _catchException5);
  FUNC0 (6, _catchException6);
  FUNC0 (7, _catchException7);
  FUNC0 (8, _catchException8);
  FUNC0 (9, _catchException9);
  FUNC0 (10, _catchException10);
  FUNC0 (11, _catchException11);
  FUNC0 (12, _catchException12);
  FUNC0 (13, _catchException13);
  FUNC0 (14, _catchException14);
  FUNC0 (16, _catchException16);

  initialized = 1;
}