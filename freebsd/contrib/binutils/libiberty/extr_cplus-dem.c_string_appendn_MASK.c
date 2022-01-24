#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int p; } ;
typedef  TYPE_1__ string ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 

__attribute__((used)) static void
FUNC2 (string *p, const char *s, int n)
{
  if (n != 0)
    {
      FUNC1 (p, n);
      FUNC0 (p->p, s, n);
      p->p += n;
    }
}