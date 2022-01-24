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
struct blockvector {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct blockvector*,int) ; 
 int FUNC1 (struct blockvector*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC4 (struct blockvector *bv)
{
  int i;

  if (bv == NULL)
    return;
  for (i = 0; i < FUNC1 (bv); i += 1)
    {
      FUNC3 (stderr, "%6d. ", i);
      FUNC2 (FUNC0 (bv, i));
    }
}