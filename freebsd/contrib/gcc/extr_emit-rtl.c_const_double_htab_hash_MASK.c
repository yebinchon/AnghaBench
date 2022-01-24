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
typedef  int hashval_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int VOIDmode ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static hashval_t
FUNC5 (const void *x)
{
  rtx value = (rtx) x;
  hashval_t h;

  if (FUNC3 (value) == VOIDmode)
    h = FUNC1 (value) ^ FUNC0 (value);
  else
    {
      h = FUNC4 (FUNC2 (value));
      /* MODE is used in the comparison, so it should be in the hash.  */
      h ^= FUNC3 (value);
    }
  return h;
}