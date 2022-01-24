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
 int FUNC0 (int) ; 
 int /*<<< orphan*/  SET ; 
 int /*<<< orphan*/  const1_rtx ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  word_mode ; 

__attribute__((used)) static
bool FUNC4 (void)
{
  static bool init = false;
  static bool cheap = true;

  if (!init)
    {
      rtx reg = FUNC2 (word_mode, 10000);
      int cost = FUNC3 (FUNC1 (word_mode, const1_rtx, reg), SET);
      cheap = cost < FUNC0 (3);
      init = true;
    }

  return cheap;
}