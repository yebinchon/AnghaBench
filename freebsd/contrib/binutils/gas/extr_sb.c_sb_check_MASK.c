#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int len; int pot; } ;
typedef  TYPE_1__ sb ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static void
FUNC3 (sb *ptr, int len)
{
  if (ptr->len + len >= 1 << ptr->pot)
    {
      sb tmp;
      int pot = ptr->pot;

      while (ptr->len + len >= 1 << pot)
	pot++;
      FUNC1 (&tmp, pot);
      FUNC0 (&tmp, ptr);
      FUNC2 (ptr);
      *ptr = tmp;
    }
}